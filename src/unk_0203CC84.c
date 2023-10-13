#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0203CDB0_sub1_decl.h"
#include "struct_decls/struct_021C0794_decl.h"
#include "overlay025/struct_ov25_02253CE0_decl.h"

#include "overlay005/const_ov5_021F89B0.h"
#include "overlay077/const_ov77_021D742C.h"

#include "struct_defs/struct_0203CC84.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_0208BE5C.h"
#include "overlay005/struct_ov5_021D1CAC.h"

#include "unk_02000C88.h"
#include "game_overlay.h"
#include "unk_020067E8.h"
#include "heap.h"
#include "unk_02034198.h"
#include "unk_02039C80.h"
#include "unk_0203A378.h"
#include "unk_0203A6DC.h"
#include "unk_0203CC84.h"
#include "unk_020508D4.h"
#include "unk_020530C8.h"
#include "unk_02057518.h"
#include "unk_0205F180.h"
#include "unk_0206940C.h"
#include "unk_0207D3B8.h"
#include "unk_0209ACBC.h"
#include "unk_0209C370.h"
#include "overlay005/ov5_021D1C30.h"
#include "overlay005/ov5_021DD6FC.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E1B08.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay025/ov25_02253CE0.h"

FS_EXTERN_OVERLAY(overlay5);
FS_EXTERN_OVERLAY(overlay77);

typedef struct UnkStruct_0203CDB0_sub1_t {
    UnkStruct_020067E8 * unk_00;
    UnkStruct_020067E8 * unk_04;
    BOOL unk_08;
    BOOL unk_0C;
};

static UnkStruct_0203CDB0 * sub_0203CDB0(UnkStruct_020067E8 * param0);
static BOOL sub_0203CEEC(UnkStruct_0203CDB0 * param0);
static void sub_0203CE6C(UnkStruct_020067E8 * param0);
static void sub_0203CF5C(UnkStruct_0203CDB0 * param0);

static UnkStruct_0203CDB0 * Unk_021C07DC;

static int sub_0203CC84 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0203CC84 * v0 = sub_02006840(param0);

    Unk_021C07DC = sub_0203CDB0(param0);

    if (v0->unk_04) {
        sub_02053808(Unk_021C07DC);
    } else {
        sub_02053704(Unk_021C07DC);
    }

    v0->unk_04 = 0;
    return 1;
}

static int sub_0203CCB4 (UnkStruct_020067E8 * param0, int * param1)
{
    Unk_021C07DC = sub_0203CDB0(param0);
    sub_020535CC(Unk_021C07DC);
    return 1;
}

static int sub_0203CCCC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_0203CDB0 * v0 = sub_0200682C(param0);

    if (sub_0203CEEC(v0)) {
        return 1;
    } else {
        return 0;
    }
}

static int sub_0203CCE4 (UnkStruct_020067E8 * param0, int * param1)
{
    sub_0203CE6C(param0);
    sub_02000EC4(FS_OVERLAY_ID(overlay77), &Unk_ov77_021D742C);
    return 1;
}

const UnkStruct_0208BE5C Unk_020EA10C = {
    sub_0203CCB4,
    sub_0203CCCC,
    sub_0203CCE4,
    0xffffffff
};

const UnkStruct_0208BE5C Unk_020EA11C = {
    sub_0203CC84,
    sub_0203CCCC,
    sub_0203CCE4,
    0xffffffff
};

void sub_0203CD00 (UnkStruct_0203CDB0 * param0)
{
    GF_ASSERT(param0->unk_00->unk_04 == NULL);
    GF_ASSERT(param0->unk_00->unk_00 == NULL);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay5), 2);

    param0->unk_68 = 0;
    param0->unk_00->unk_08 = 0;
    param0->unk_00->unk_00 = sub_020067E8(&Unk_ov5_021F89B0, param0, 11);
}

void sub_0203CD44 (UnkStruct_0203CDB0 * param0)
{
    param0->unk_68 = 0;
}

BOOL sub_0203CD4C (UnkStruct_0203CDB0 * param0)
{
    return param0->unk_00->unk_00 != NULL;
}

BOOL sub_0203CD5C (UnkStruct_0203CDB0 * param0)
{
    if ((param0->unk_00->unk_00 != NULL) && param0->unk_68) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_0203CD74 (UnkStruct_0203CDB0 * param0)
{
    return param0->unk_00->unk_04 != NULL;
}

void sub_0203CD84 (UnkStruct_0203CDB0 * param0, const UnkStruct_0208BE5C * param1, void * param2)
{
    GF_ASSERT(param0->unk_00->unk_04 == NULL);
    sub_0203CD44(param0);
    param0->unk_00->unk_04 = sub_020067E8(param1, param2, 11);
}

static UnkStruct_0203CDB0 * sub_0203CDB0 (UnkStruct_020067E8 * param0)
{
    UnkStruct_0203CC84 * v0;
    UnkStruct_0203CDB0 * v1;

    Heap_Create(3, 11, 0x1c000);
    Heap_Create(3, 32, 0x4000);
    Heap_Create(0, 91, 0x300);

    v1 = sub_0200681C(param0, sizeof(UnkStruct_0203CDB0), 11);
    MI_CpuClear8(v1, sizeof(UnkStruct_0203CDB0));

    v1->unk_00 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0203CDB0_sub1));
    v1->unk_00->unk_00 = NULL;
    v1->unk_00->unk_04 = NULL;
    v1->unk_00->unk_08 = 0;
    v1->unk_00->unk_0C = 0;

    v0 = sub_02006840(param0);

    v1->unk_0C = v0->unk_08;
    v1->unk_10 = NULL;
    v1->unk_1C = sub_0203A720(sub_0203A790(v1->unk_0C));
    v1->unk_2C = sub_02039D6C();

    sub_0203A378(v1, 11);

    v1->unk_98 = sub_0207D99C(11);
    v1->unk_94 = sub_0206940C(11);

    sub_02069434(v1->unk_94);

    v1->unk_B4 = sub_0209ACBC(11);
    v1->unk_BC = sub_0209C370(11);

    return v1;
}

static void sub_0203CE6C (UnkStruct_020067E8 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_0200682C(param0);

    sub_02039DE4(v0->unk_2C);
    sub_0203A398(v0);
    Heap_FreeToHeap(v0->unk_98);
    sub_0206942C(v0->unk_94);
    sub_0209ACDC(v0->unk_B4);
    sub_0209C388(v0->unk_BC);

    Heap_FreeToHeap(v0->unk_00);
    sub_02006830(param0);
    Heap_Destroy(91);
    Heap_Destroy(11);
    Heap_Destroy(32);
}

static void sub_0203CECC (UnkStruct_020067E8 ** param0)
{
    if (*param0) {
        if (sub_02006844(*param0)) {
            sub_02006814(*param0);
            *param0 = NULL;
        }
    }
}

BOOL sub_0203CEEC (UnkStruct_0203CDB0 * param0)
{
    BOOL v0;

    sub_0203CF5C(param0);
    v0 = sub_02050958(param0);

    if ((v0 == 1) && (param0->unk_04 != NULL)) {
        ov5_021EA714(param0, 0, 0);
    }

    if (param0->unk_00->unk_00) {
        sub_0203CECC(&param0->unk_00->unk_00);

        if (param0->unk_00->unk_00 == NULL) {
            Overlay_UnloadByID(FS_OVERLAY_ID(overlay5));
        }
    } else if (param0->unk_00->unk_04) {
        sub_0203CECC(&param0->unk_00->unk_04);
    }

    if (param0->unk_00->unk_0C && !param0->unk_10 && !param0->unk_00->unk_00 && !param0->unk_00->unk_04) {
        return 1;
    }

    return 0;
}

void sub_0203CF5C (UnkStruct_0203CDB0 * param0)
{
    int v0;
    UnkStruct_ov5_021D1CAC v1;
    BOOL v2 = 0;

    if (!param0->unk_00->unk_08 && param0->unk_68 && (sub_020509A4(param0) == 0)) {
        v2 = 1;
    }

    if (v2) {
        sub_0205F490(param0->unk_3C);
        ov5_021D1CAC(&v1, param0, gCoreSys.padInput, gCoreSys.unk_44);
    }

    v0 = param0->unk_70;

    if (param0->unk_1C->unk_00 == 326) {
        v0 = 0;
    }

    switch (v0) {
    case 1:
        if (v2) {
            if (sub_02058C40()) {
                if (ov5_021D213C(&v1, param0) == 1) {
                    (void)0;
                }
            }
        }

        sub_0205805C(param0, v2);
        break;
    case 3:
        if (v2) {
            if (sub_02058C40()) {
                if (ov5_021D219C(&v1, param0) == 1) {
                    v2 = 0;
                }
            } else {
                v2 = 0;
            }
        }

        sub_0205805C(param0, v2);
        break;
    case 2:
        if (v2) {
            if (ov5_021D2298(&v1, param0) == 1) {
                (void)0;
            } else {
                sub_0205F180(param0->unk_3C, param0->unk_28, -1, v1.unk_04, v1.unk_06, 0);
            }
        }
        break;
    case 4:
        if (v2) {
            if (ov5_021D2368(&v1, param0) == 1) {
                ov5_021DDA78(param0->unk_04->unk_08);
                ov5_021E1BCC(param0, 4);
                ov5_021E0EEC(param0->unk_3C);
                ov5_021EA714(param0, 0, 1);
            } else {
                if (gCoreSys.padInput & PAD_BUTTON_A) {
                    ov5_021DDA78(param0->unk_04->unk_08);
                }

                {
                    BOOL v3 = 0;
                    UnkStruct_ov25_02253CE0 * v4 = sub_0203D158();

                    if (v4 != NULL) {
                        v3 = ov25_02253DD4(v4);
                    }

                    sub_0205F180(param0->unk_3C, param0->unk_28, -1, v1.unk_04, v1.unk_06, v3);
                }
            }
        }
        break;
    default:
        if (v2) {
            if (ov5_021D1DA4(&v1, param0) == 1) {
                ov5_021DDA78(param0->unk_04->unk_08);
                ov5_021E1BCC(param0, 4);
                sub_0205F56C(param0->unk_3C);
                ov5_021E0EEC(param0->unk_3C);
                ov5_021EA714(param0, 0, 1);
            } else {
                if (gCoreSys.padInput & PAD_BUTTON_A) {
                    ov5_021DDA78(param0->unk_04->unk_08);
                }

                {
                    BOOL v5 = 0;
                    UnkStruct_ov25_02253CE0 * v6 = sub_0203D158();

                    if (v6 != NULL) {
                        v5 = ov25_02253DD4(v6);
                    }

                    sub_0205F180(param0->unk_3C, param0->unk_28, -1, v1.unk_04, v1.unk_06, v5);
                }
            }
        }
        break;
    }
}

void sub_0203D128 (void)
{
    Unk_021C07DC->unk_00->unk_08 = 1;
    sub_02035EC8();
}

void sub_0203D140 (void)
{
    Unk_021C07DC->unk_00->unk_08 = 0;
    sub_02035EA8();
}

struct UnkStruct_ov25_02253CE0_t * sub_0203D158 (void)
{
    if (Unk_021C07DC->unk_04 == NULL) {
        return NULL;
    }

    return Unk_021C07DC->unk_04->unk_14;
}

UnkStruct_02018340 * sub_0203D170 (void * param0)
{
    UnkStruct_0203CDB0 * v0 = (UnkStruct_0203CDB0 *)param0;
    return v0->unk_08;
}

SaveData * sub_0203D174 (void * param0)
{
    return ((UnkStruct_0203CDB0 *)param0)->unk_0C;
}
