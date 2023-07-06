#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "inlines.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "constdata/const_020EA358.h"
#include "constdata/const_020F3060.h"
#include "constdata/const_020F3050.h"
#include "constdata/const_020F2FCC.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0208BA84.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_0208C06C.h"
#include "overlay006/battle_params.h"

#include "unk_020041CC.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "heap.h"
#include "unk_0202B604.h"
#include "unk_0202CD50.h"
#include "unk_0202F1D4.h"
#include "unk_020507CC.h"
#include "unk_02051D8C.h"
#include "unk_020553DC.h"
#include "unk_0207D3B8.h"
#include "unk_0208BA78.h"
#include "unk_0208C010.h"
#include "unk_02099550.h"
#include "overlay062/ov62_02248408.h"

FS_EXTERN_OVERLAY(overlay61);
FS_EXTERN_OVERLAY(overlay62);

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_020067E8 * unk_08;
    UnkStruct_021C0794 * unk_0C;
    BattleParams * unk_10;
    UnkStruct_0208C06C * unk_14;
    UnkStruct_0208BA84 unk_18;
    UnkStruct_0203CDB0 * unk_28;
} UnkStruct_0208BC3C;

static void sub_0208BAAC(UnkStruct_020067E8 * param0, int param1);
static int sub_0208BB6C(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BB78(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BB84(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BB90(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BB9C(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BBA8(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BBB4(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BBC0(UnkStruct_020067E8 * param0, int * param1);
static int sub_0208BC08(UnkStruct_020067E8 * param0, int * param1);
static BOOL sub_0208BC3C(UnkStruct_0208BC3C * param0, int param1);
static BOOL sub_0208BC8C(UnkStruct_0208BC3C * param0, int param1);
static BOOL sub_0208BE80(int param0);

UnkStruct_0208C06C * sub_0208BA78 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0208C06C * v0;
    UnkStruct_0208BC3C * v1 = sub_02006840(param0);

    return v1->unk_14;
}

void sub_0208BA84 (UnkStruct_0208BA84 * param0, BOOL param1, int param2)
{
    param0->unk_00 = param1;
    param0->unk_04 = param2;
}

static void sub_0208BA8C (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202B628 * v0 = sub_0202B628(param0);
    void * v1 = sub_0202C244(param1, param2);

    sub_0202B758(v0, v1, 4);
}

static void sub_0208BAAC (UnkStruct_020067E8 * param0, int param1)
{
    UnkStruct_0208BC3C * v0;

    Heap_Create(3, 119, 0x10000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_0208BC3C), 119);
    MI_CpuFill8(v0, 0, sizeof(UnkStruct_0208BC3C));

    v0->unk_28 = sub_02006840(param0);
    v0->unk_0C = v0->unk_28->unk_0C;
    v0->unk_14 = Heap_AllocFromHeap(119, sizeof(UnkStruct_0208C06C));

    MI_CpuFill8(v0->unk_14, 0, sizeof(UnkStruct_0208C06C));

    v0->unk_14->unk_868 = &v0->unk_18;
    v0->unk_14->unk_830 = v0->unk_0C;
    v0->unk_14->unk_00 = param1;
    v0->unk_14->unk_81C[v0->unk_14->unk_534.unk_1A4] = sub_0208C034(v0->unk_14, v0->unk_14->unk_00);

    {
        int v1;

        switch (param1) {
        case 2:
            v1 = 18;
            break;
        case 3:
            v1 = 19;
            break;
        case 4:
            v1 = 19;
            break;
        case 5:
            v1 = 20;
            break;
        case 6:
            v1 = 21;
            break;
        default:
            return;
        }

        sub_0208BA8C(v0->unk_0C, 119, v1);
    }
}

static int sub_0208BB6C (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 0);
    return 1;
}

static int sub_0208BB78 (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 1);
    return 1;
}

static int sub_0208BB84 (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 2);
    return 1;
}

static int sub_0208BB90 (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 3);
    return 1;
}

static int sub_0208BB9C (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 4);
    return 1;
}

static int sub_0208BBA8 (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 5);
    return 1;
}

static int sub_0208BBB4 (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0208BAAC(param0, 6);
    return 1;
}

static int sub_0208BBC0 (UnkStruct_020067E8 * param0, int * param1)
{
    BOOL v0;
    UnkStruct_0208BC3C * v1 = sub_0200682C(param0);

    switch (*param1) {
    case 0:
        v0 = sub_0208BC3C(v1, 119);

        if (v0) {
            if (v1->unk_18.unk_00 == 1) {
                *param1 = 1;
                v1->unk_00 = 0;
            } else {
                return 1;
            }
        }
        break;
    case 1:
        v0 = sub_0208BC8C(v1, 119);

        if (v0) {
            *param1 = 0;
            v1->unk_00 = 0;
        }
        break;
    }

    return 0;
}

static int sub_0208BC08 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0208BC3C * v0 = sub_0200682C(param0);

    if (sub_0202F250() == 1) {
        sub_0202F22C();
    }

    Heap_FreeToHeap(v0->unk_14);
    sub_02006830(param0);
    sub_0200544C(1, 127);
    Heap_Destroy(119);

    return 1;
}

static BOOL sub_0208BC3C (UnkStruct_0208BC3C * param0, int param1)
{
    switch (param0->unk_00) {
    case 0:
        if (param0->unk_14->unk_00 == 0) {
            param0->unk_08 = sub_020067E8(&Unk_020F3050, param0, param1);
        } else {
            param0->unk_08 = sub_020067E8(&Unk_020F3060, param0, param1);
        }

        param0->unk_00++;
        break;
    default:
        if (sub_02006844(param0->unk_08) == 0) {
            break;
        }

        sub_02006814(param0->unk_08);
        return 1;
    }

    return 0;
}

static BOOL sub_0208BC8C (UnkStruct_0208BC3C * param0, int param1)
{
    switch (param0->unk_00) {
    case 0:
        if (param0->unk_14->unk_00 != 0) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay61));
            sub_020995C4();
        }

        param0->unk_00++;
        break;
    case 1:
    {
        int v0;

        param0->unk_10 = sub_02051D8C(param1, 0x0);

        if (sub_0202F250() == 0) {
            sub_0202F298(param0->unk_0C, param1, &v0, param0->unk_10, param0->unk_14->unk_86C);
        } else {
            sub_0202FAFC(param0->unk_10, param0->unk_0C);
            v0 = 1;
        }

        param0->unk_10->unk_E4 = sub_0207D99C(param1);
        param0->unk_10->unk_11C = sub_0202CD88(param0->unk_0C);

        if (Overlay_LoadByID(FS_OVERLAY_ID(overlay62), 2) == 1) {
            ov62_02248408(sub_0202F264(), param0->unk_10, param1);
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay62));
        }

        param0->unk_14->unk_874 = 1;

        if (v0 != 1) {
            Heap_FreeToHeap(param0->unk_10->unk_E4);
            sub_020520A4(param0->unk_10);
            param0->unk_00 = 0;
            return 1;
        } else {
            param0->unk_00++;
        }
    }
    break;
    case 2:
    {
        sub_0200544C(1, 127);
        sub_02005464(1);

        if (sub_0208BE80(param0->unk_10->trainerData[1].class) == 1) {
            sub_02004550(5, 1202, 1);
        } else {
            sub_02004550(5, 1119, 1);
        }
    }
        param0->unk_08 = sub_020067E8(&Unk_020EA358, param0->unk_10, param1);
        param0->unk_00++;
        break;
    default:
        if (sub_02006844(param0->unk_08) == 0) {
            break;
        }

        param0->unk_14->unk_874 = param0->unk_10->unk_19C;

        if (param0->unk_14->unk_00 != 0) {
            if (param0->unk_14->unk_874 == 0) {
                *param0->unk_14->unk_878 = 1;
            }
        }

        Heap_FreeToHeap(param0->unk_10->unk_E4);
        sub_020520A4(param0->unk_10);
        sub_02006814(param0->unk_08);

        {
            u16 v1;

            sub_02005464(0);
            sub_02004234(0);

            v1 = sub_02055428(param0->unk_28, param0->unk_28->unk_1C->unk_00);

            sub_02004224(sub_020554A4(param0->unk_28, param0->unk_28->unk_1C->unk_00));
            sub_02004550(4, v1, 1);
        }

        param0->unk_00 = 0;

        if (param0->unk_14->unk_00 != 0) {
            sub_020995B4();
            Overlay_LoadByID(FS_OVERLAY_ID(overlay61), 2);
        }

        return 1;
    }

    return 0;
}

const UnkStruct_0208BE5C Unk_020F2FCC = {
    sub_0208BB6C,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const UnkStruct_0208BE5C Unk_020F302C = {
    sub_0208BB78,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const UnkStruct_0208BE5C Unk_020F301C = {
    sub_0208BB84,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const UnkStruct_0208BE5C Unk_020F300C = {
    sub_0208BB90,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const UnkStruct_0208BE5C Unk_020F2FFC = {
    sub_0208BB9C,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const UnkStruct_0208BE5C Unk_020F2FEC = {
    sub_0208BBA8,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

const UnkStruct_0208BE5C Unk_020F2FDC = {
    sub_0208BBB4,
    sub_0208BBC0,
    sub_0208BC08,
    0xffffffff,
};

static const UnkStruct_0208BE5C * Unk_02100CF0[] = {
    &Unk_020F2FCC,
    &Unk_020F302C,
    &Unk_020F301C,
    &Unk_020F300C,
    &Unk_020F2FFC,
    &Unk_020F2FEC,
    &Unk_020F2FDC,
};

const UnkStruct_0208BE5C * sub_0208BE5C (int param0)
{
    const UnkStruct_0208BE5C * v0;

    v0 = Unk_02100CF0[param0];
    return v0;
}

BOOL sub_0208BE68 (UnkStruct_0208C06C * param0)
{
    UnkStruct_020507E4 * v0;

    v0 = sub_020507E4(param0->unk_830);
    return inline_0208BE68(v0, 53);
}

static BOOL sub_0208BE80 (int param0)
{
    int v0;
    const int v1[] = {
        97, 99, 100, 101, 102,
    };

    for (v0 = 0; v0 < NELEMS(v1); v0++) {
        if (param0 == v1[v0]) {
            return 1;
        }
    }

    return 0;
}
