#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay104/struct_ov104_0222E930_decl.h"

#include "constdata/const_020EA358.h"

#include "struct_defs/struct_0208BE5C.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay104/struct_ov104_0223BA10.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "heap.h"
#include "unk_020302D0.h"
#include "unk_0203061C.h"
#include "unk_02034198.h"
#include "unk_02051D8C.h"
#include "unk_0205DFC4.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022361B4.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay107/ov107_02241AE0.h"
#include "overlay107/ov107_02245EB0.h"

FS_EXTERN_OVERLAY(overlay107);

#include <nitro/code16.h>

BOOL ov104_022358E8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223594C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235968(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223597C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022359D0(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235A24(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235AAC(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235AE8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235B98(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235BAC(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235BC0(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235F9C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235FB8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02235FE8(UnkStruct_ov104_0222E930 * param0);
static BOOL ov104_02236008(UnkStruct_ov104_0222E930 * param0);
static void ov104_02235B3C(UnkStruct_ov104_0223597C * param0, UnkStruct_ov104_0223BA10 * param1);
BOOL ov104_02236038(UnkStruct_ov104_0222E930 * param0);
static BOOL ov104_02236058(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02236090(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022360A8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022360C0(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022360D8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02236120(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02236150(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223617C(UnkStruct_ov104_0222E930 * param0);
static void ov104_02235B84(void * param0);

BOOL ov104_022358E8 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;
    UnkStruct_ov104_02230BE4 * v1;
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);
    u16 v5 = ov104_0222FC00(param0);
    u16 v6 = ov104_0222FC00(param0);
    u16 * v7 = ov104_0222FBE4(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = ov104_022361B4(v1->unk_08, v2, v3, v4, v5, v6, v7);

    sub_0209B980(param0->unk_00->unk_00, v0);

    return 0;
}

BOOL ov104_0223594C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;
    u16 v1 = ov104_0222FC00(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02236514(v0, v1);

    return 0;
}

BOOL ov104_02235968 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022367AC(v0);

    return 0;
}

BOOL ov104_0223597C (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    UnkStruct_ov104_0223BA10 * v1;
    UnkStruct_ov104_0223597C * v2;
    UnkStruct_ov104_02230BE4 * v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay107);

    static const UnkStruct_0208BE5C v4 = {
        ov107_02241AE0,
        ov107_02241BD4,
        ov107_02241D2C,
        FS_OVERLAY_ID(overlay107)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_0223597C));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_0223597C));
    v2->unk_00 = v3->unk_08;

    ov104_02235B3C(v2, v1);
    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02235B84);

    return 1;
}

BOOL ov104_022359D0 (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    UnkStruct_ov104_0223BA10 * v1;
    UnkStruct_ov104_0223597C * v2;
    UnkStruct_ov104_02230BE4 * v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay107);

    static const UnkStruct_0208BE5C v4 = {
        NULL,
        NULL,
        NULL,
        FS_OVERLAY_ID(overlay107)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_0223597C));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_0223597C));
    v2->unk_00 = v3->unk_08;

    ov104_02235B3C(v2, v1);
    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02235B84);

    return 1;
}

BOOL ov104_02235A24 (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    UnkStruct_ov104_0223BA10 * v1;
    UnkStruct_ov6_02240D5C * v2;
    UnkStruct_02073C74 * v3;

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = v1->unk_0C;

    v3 = Party_GetPokemonBySlotIndex(v2->unk_04[0], 0);
    sub_0207A128(v1->unk_28, 0, v3);

    v3 = Party_GetPokemonBySlotIndex(v2->unk_04[0], 1);
    sub_0207A128(v1->unk_28, 1, v3);

    if (ov104_0223BA14(v1->unk_10) == 0) {
        v3 = Party_GetPokemonBySlotIndex(v2->unk_04[0], 2);
        sub_0207A128(v1->unk_28, 2, v3);
    } else {
        v3 = Party_GetPokemonBySlotIndex(v2->unk_04[2], 0);
        sub_0207A128(v1->unk_28, 2, v3);

        v3 = Party_GetPokemonBySlotIndex(v2->unk_04[2], 1);
        sub_0207A128(v1->unk_28, 3, v3);
    }

    v1->unk_1C = sub_02052868(v2->unk_14);
    sub_020520A4(v2);

    return 0;
}

BOOL ov104_02235AAC (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov6_02240D5C * v0;
    UnkStruct_ov104_0223BA10 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223B810(v1, v2);

    v1->unk_0C = v0;

    sub_0209B988(param0->unk_00->unk_00, &Unk_020EA358, v0, 0, NULL);
    return 1;
}

BOOL ov104_02235AE8 (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    UnkStruct_ov104_0223BA10 * v1;
    UnkStruct_ov104_0223597C * v2;
    UnkStruct_ov104_02230BE4 * v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay107);

    static const UnkStruct_0208BE5C v4 = {
        ov107_02245EB0,
        ov107_02245FD0,
        ov107_02246130,
        FS_OVERLAY_ID(overlay107)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_0223597C));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_0223597C));
    v2->unk_00 = v3->unk_08;

    ov104_02235B3C(v2, v1);
    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02235B84);

    return 1;
}

static void ov104_02235B3C (UnkStruct_ov104_0223597C * param0, UnkStruct_ov104_0223BA10 * param1)
{
    int v0;

    param0->unk_04 = param1->unk_10;
    param0->unk_18 = param1->unk_28;
    param0->unk_1C = param1->unk_2C;
    param0->unk_24 = param1;
    param0->unk_28 = param1->unk_A1C;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_08[v0] = param1->unk_370[v0];
        param0->unk_0C[v0] = param1->unk_374[v0];
        param0->unk_10[v0] = param1->unk_378[v0];
        param0->unk_14[v0] = param1->unk_37C[v0];
    }

    return;
}

static void ov104_02235B84 (void * param0)
{
    int v0;
    UnkStruct_ov104_0223597C * v1 = param0;

    ov104_022367DC(v1->unk_24, param0);
    Heap_FreeToHeap(param0);

    return;
}

BOOL ov104_02235B98 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02236BF0(v0);

    return 0;
}

BOOL ov104_02235BAC (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02236BF8(v0);

    return 0;
}

BOOL ov104_02235BC0 (UnkStruct_ov104_0222E930 * param0)
{
    PLString * v0;
    UnkStruct_02073C74 * v1;
    Party * v2;
    UnkStruct_ov104_0223BA10 * v3;
    u8 v4;
    u32 v5[9][2];
    u32 v6, v7;
    int v8, v9, v10;
    UnkStruct_ov104_02230BE4 * v11;
    UnkStruct_ov104_0223C4CC * v12;
    u8 v13[4];
    u8 v14 = (*((param0)->unk_1C++));
    u8 v15 = (*((param0)->unk_1C++));
    u8 v16 = (*((param0)->unk_1C++));
    u16 * v17 = ov104_0222FBE4(param0);

    v3 = sub_0209B978(param0->unk_00->unk_00);
    v11 = sub_0209B970(param0->unk_00->unk_00);

    switch (v14) {
    case 2:
        v3->unk_10 = v15;
        break;
    case 3:
        *v17 = v3->unk_380[v15];
        break;
    case 4:
        *v17 = v3->unk_14;
        break;
    case 5:
        if (v3->unk_14 < 9999) {
            v3->unk_14++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *v17 = sub_020302EC(v3->unk_08);
        break;
    case 10:
        ov104_02236848(v3, 2);
        break;
    case 14:
        *v17 = ov104_02236B48(v3);
        break;
    case 15:
        *v17 = v3->unk_288[v15].unk_00_val1_0;
        break;
    case 16:
        *v17 = v3->unk_288[v15].unk_04[v16];
        break;
    case 18:
        v2 = Party_GetFromSavedata(v11->unk_08);

        for (v8 = 0; v8 < 3; v8++) {
            v1 = Party_GetPokemonBySlotIndex(v2, v3->unk_24[v8]);
            sub_02074B30(v1, 6, &v3->unk_36A[v8]);
        }
        break;
    case 19:
        *v17 = ov104_0223BB60(v3);
        break;
    case 20:
        *v17 = ov104_02236B58(v3, v15);
        break;
    case 21:
        ov104_02236B8C(v3);
        break;
    case 22:
        ov104_02236BD0(v3);
        break;
    case 23:
        *v17 = ov104_02236B54(v3);
        break;
    case 24:
        *v17 = v3->unk_A10;
        break;
    case 26:
        *v17 = v3->unk_A11;
        break;
    case 27:
        *v17 = ov104_02236D10(v3);
        ov104_02236ED8(v3->unk_04, v3->unk_10, *v17);
        break;
    case 28:
        ov104_02236C50(v3);
        break;
    case 29:
        sub_0209BA80(v3);
        break;
    case 30:
        if (v3->unk_A1B >= 6) {
            *v17 = (v3->unk_A1B - 6);
        } else {
            *v17 = v3->unk_A1B;
        }
        break;
    case 31:
        v3->unk_A1B = 0;
        v3->unk_A19 = 0;
        v3->unk_A18 = 0;
        break;
    case 32:
        v3->unk_A18 = v15;
        break;
    case 33:
        v10 = 0;

        if (v3->unk_A1B >= 6) {
            if (sub_0203608C() != 0) {
                v10 = 1;
            }
        } else {
            if (sub_0203608C() == 0) {
                v10 = 1;
            }
        }

        if (v10 == 1) {
            ov104_0223BC2C(sub_0203068C(v11->unk_08), v3->unk_10, 50);
        } else {
            v3->unk_A1C -= 50;
        }
        break;
    case 34:
        *v17 = 0;

        if (ov104_0223BA14(v3->unk_10) == 1) {
            if (v3->unk_A1B >= 6) {
                if (sub_0203608C() == 0) {
                    *v17 = 1;
                }
            } else {
                if (sub_0203608C() != 0) {
                    *v17 = 1;
                }
            }
        }
        break;
    case 35:
        *v17 = ov104_0223BA14(v3->unk_10);
        break;
    case 17:
        *v17 = v3->unk_10;
        break;
    case 25:
        *v17 = v3->unk_12;
        break;
    case 36:
        v12 = ov104_0222E924(param0->unk_00);
        ov104_0223BB84(v12->unk_00, v3, 3);
        break;
    case 37:
        ov104_0222E278(&(v3->unk_4C[0]), v3->unk_30[v3->unk_11], 11, 178);
        ov104_0222E278(&(v3->unk_4C[1]), v3->unk_30[v3->unk_11 + 7], 11, 178);
        break;
    case 38:
        *v17 = ov104_02237338(v3);
        break;
    case 39:
        *v17 = (u16)sub_02030470(sub_0203041C(v11->unk_08), 10, 0, 0, NULL);
        v13[0] = 1;
        sub_02030430(sub_0203041C(v11->unk_08), 10, 0, 0, v13);
        break;
    case 40:
        *v17 = 0;

        if (v3->unk_10 == 0) {
            if ((v3->unk_14 + 1) == 21) {
                *v17 = 1;
            } else if ((v3->unk_14 + 1) == 49) {
                *v17 = 2;
            }
        }
        break;
    case 41:
        ov104_0222E330(v3->unk_288, v3->unk_26C, v3->unk_274, v3->unk_278, NULL, 4, 11, 179);
        break;
    case 42:
        ov104_0223BAB8(v3);
        break;
    case 43:
        *v17 = v3->unk_13;
        v3->unk_13 = 1;
        break;
    case 44:
        if (v3->unk_10 == 3) {
            if (v15 == 0) {
                v3->unk_22 = sub_02030698(sub_0203068C(v11->unk_08), sub_0205E630(v3->unk_10), sub_0205E6A8(sub_0205E630(v3->unk_10)));
                sub_020306E4(sub_0203068C(v11->unk_08), sub_0205E630(v3->unk_10), sub_0205E6A8(sub_0205E630(v3->unk_10)), v3->unk_20);
            } else {
                sub_020306E4(sub_0203068C(v11->unk_08), sub_0205E630(v3->unk_10), sub_0205E6A8(sub_0205E630(v3->unk_10)), v3->unk_22);
            }
        }
        break;
    }

    return 0;
}

BOOL ov104_02235F9C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;
    u16 * v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_1C;

    return 0;
}

BOOL ov104_02235FB8 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);
    u16 * v3 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v3 = ov104_02236F70(v0, v1, v2);

    return 1;
}

BOOL ov104_02235FE8 (UnkStruct_ov104_0222E930 * param0)
{
    u16 v0 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_02236008);

    return 1;
}

static BOOL ov104_02236008 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;
    u16 v1 = ov104_0222FC8C(param0, param0->unk_78[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_A1A >= 2) {
        v0->unk_A1A = 0;
        return 1;
    }

    return 0;
}

BOOL ov104_02236038 (UnkStruct_ov104_0222E930 * param0)
{
    u16 v0 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_02236058);

    return 1;
}

static BOOL ov104_02236058 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;
    u16 * v1 = ov104_0222FC14(param0, param0->unk_78[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_A1B == 0) {
        return 0;
    }

    v0->unk_A1A = 0;
    *v1 = v0->unk_A1B;

    return 1;
}

BOOL ov104_02236090 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02236FC0(param0->unk_00, v0);

    return 0;
}

BOOL ov104_022360A8 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022370E0(param0->unk_00, v0);

    return 0;
}

BOOL ov104_022360C0 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223BA10 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02237180(param0->unk_00, v0);

    return 0;
}

BOOL ov104_022360D8 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_02230BE4 * v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 * v2 = ov104_0222FBE4(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    *v2 = sub_02030698(sub_0203068C(v0->unk_08), sub_0205E630(v1), sub_0205E6A8(sub_0205E630(v1)));

    return 0;
}

BOOL ov104_02236120 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_02230BE4 * v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);

    v0 = sub_0209B970(param0->unk_00->unk_00);
    ov104_0223BC2C(sub_0203068C(v0->unk_08), v1, v2);

    return 0;
}

BOOL ov104_02236150 (UnkStruct_ov104_0222E930 * param0)
{
    u16 v0;
    UnkStruct_ov104_02230BE4 * v1;
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    ov104_02236ED8(v1->unk_08, v2, v3);

    return 0;
}

BOOL ov104_0223617C (UnkStruct_ov104_0222E930 * param0)
{
    u16 * v0;
    UnkStruct_ov104_0223BA10 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);
    u16 v3 = (*((param0)->unk_1C++));

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_4C[v3].unk_00.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}
