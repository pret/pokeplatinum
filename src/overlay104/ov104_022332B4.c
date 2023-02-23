#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_defs/pokemon.h"
#include "overlay104/struct_ov104_0222E930_decl.h"

#include "constdata/const_020EA358.h"

#include "struct_defs/struct_0208BE5C.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay104/struct_ov104_0222E930_t.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_022320B4_t.h"
#include "overlay104/struct_ov104_02234130.h"
#include "overlay104/struct_ov104_0223ADA0.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0202FF4C.h"
#include "unk_02051D8C.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222E63C.h"
#include "overlay104/ov104_0222E930.h"
#include "overlay104/ov104_0222FBE4.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022339B4.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay105/ov105_02241AE0.h"

FS_EXTERN_OVERLAY(overlay105);

#include <nitro/code16.h>

BOOL ov104_022332B4(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022332F4(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02233310(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_02233324(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223338C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022333B4(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022333F8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223348C(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022334A0(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022334B4(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022334C8(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022334DC(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022338E0(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_022338FC(UnkStruct_ov104_0222E930 * param0);
BOOL ov104_0223392C(UnkStruct_ov104_0222E930 * param0);
static BOOL ov104_0223394C(UnkStruct_ov104_0222E930 * param0);
void ov104_022338B4(UnkStruct_0201CD38 * param0, void * param1);
BOOL ov104_0223397C(UnkStruct_ov104_0222E930 * param0);
static void ov104_02233478(void * param0);

BOOL ov104_022332B4 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;
    UnkStruct_ov104_02230BE4 * v1;
    u16 v2 = ov104_0222FC00(param0);
    u16 v3 = ov104_0222FC00(param0);
    u16 v4 = ov104_0222FC00(param0);

    v1 = sub_0209B970(param0->unk_00->unk_00);
    v0 = ov104_022339B4(v1->unk_08, v2, v3, v4);

    sub_0209B980(param0->unk_00->unk_00, v0);

    return 0;
}

BOOL ov104_022332F4 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;
    u16 v1 = ov104_0222FC00(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02233B98(v0, v1);

    return 0;
}

BOOL ov104_02233310 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022340D0(v0);

    return 0;
}

BOOL ov104_02233324 (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    UnkStruct_ov104_0223ADA0 * v1;
    UnkStruct_ov104_02234130 * v2;
    UnkStruct_ov104_02230BE4 * v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay105);

    static const UnkStruct_0208BE5C v4 = {
        ov105_02241AE0,
        ov105_02241BD8,
        ov105_02241F54,
        FS_OVERLAY_ID(overlay105)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_02234130));

    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02234130));

    v2->unk_00 = v3->unk_08;
    v2->unk_04 = v1->unk_04;
    v2->unk_05 = v1->unk_05;
    v2->unk_06 = 0;
    v2->unk_08 = v1->unk_4D4;
    v2->unk_0C = v1->unk_4D8;
    v2->unk_1C = v1;

    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02233478);
    return 1;
}

BOOL ov104_0223338C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;
    UnkStruct_ov6_02240D5C * v1;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    v1 = v0->unk_4FC;

    v0->unk_14 = sub_02052868(v1->unk_14);

    sub_020520A4(v1);
    return 0;
}

BOOL ov104_022333B4 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov6_02240D5C * v0;
    UnkStruct_ov104_0223ADA0 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);

    v1 = sub_0209B978(param0->unk_00->unk_00);
    v0 = ov104_0223ABA0(v1, v2);

    v1->unk_4FC = v0;
    sub_0209B988(param0->unk_00->unk_00, &Unk_020EA358, v0, 0, NULL);

    return 1;
}

BOOL ov104_022333F8 (UnkStruct_ov104_0222E930 * param0)
{
    int v0;
    UnkStruct_ov104_0223ADA0 * v1;
    UnkStruct_ov104_02234130 * v2;
    UnkStruct_ov104_02230BE4 * v3 = sub_0209B970(param0->unk_00->unk_00);

    FS_EXTERN_OVERLAY(overlay105);

    static const UnkStruct_0208BE5C v4 = {
        ov105_02241AE0,
        ov105_02241BD8,
        ov105_02241F54,
        FS_OVERLAY_ID(overlay105)
    };

    v1 = sub_0209B978(param0->unk_00->unk_00);

    for (v0 = 0; v0 < 6; v0++) {
        v1->unk_4DC[v0] = 0;
    }

    v2 = Heap_AllocFromHeap(11, sizeof(UnkStruct_ov104_02234130));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov104_02234130));

    v2->unk_00 = v3->unk_08;
    v2->unk_04 = v1->unk_04;
    v2->unk_05 = v1->unk_05;
    v2->unk_06 = 1;
    v2->unk_08 = v1->unk_4D4;
    v2->unk_0C = v1->unk_4D8;
    v2->unk_1C = v1;

    sub_0209B988(param0->unk_00->unk_00, &v4, v2, 0, ov104_02233478);
    return 1;
}

static void ov104_02233478 (void * param0)
{
    int v0;
    UnkStruct_ov104_02234130 * v1 = param0;

    ov104_0223410C(v1->unk_1C, param0);
    Heap_FreeToHeap(param0);

    return;
}

BOOL ov104_0223348C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223449C(v0);

    return 0;
}

BOOL ov104_022334A0 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_02234570(v0);

    return 0;
}

BOOL ov104_022334B4 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_022346A4(v0);

    return 0;
}

BOOL ov104_022334C8 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;

    v0 = sub_0209B978(param0->unk_00->unk_00);
    ov104_0223470C(v0);

    return 0;
}

BOOL ov104_022334DC (UnkStruct_ov104_0222E930 * param0)
{
    int v0[18];
    UnkStruct_ov104_0223C4CC * v1;
    UnkStruct_02023790 * v2;
    Pokemon * v3;
    UnkStruct_ov104_0223ADA0 * v4;
    u8 v5, v6;
    u32 v7, v8, v9;
    int v10, v11;
    u8 v12 = (*((param0)->unk_1C++));
    u8 v13 = (*((param0)->unk_1C++));
    u8 v14 = (*((param0)->unk_1C++));
    u16 * v15 = ov104_0222FBE4(param0);

    v4 = sub_0209B978(param0->unk_00->unk_00);
    v1 = ov104_0222E924(param0->unk_00);

    switch (v12) {
    case 0:
        v4->unk_07 = v13;
        break;
    case 1:
        v4->unk_05 = v13;
        break;
    case 2:
        v4->unk_04 = v13;
        break;
    case 3:
        *v15 = v4->unk_4DC[v13];
        break;
    case 4:
        *v15 = v4->unk_0C;
        break;
    case 5:
        if (v4->unk_0C < 9999) {
            v4->unk_0C++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *v15 = sub_0202FF68(v4->unk_4F4);
        break;
    case 10:
        ov104_02234148(v4, 2);
        break;
    case 14:
        *v15 = ov104_02234430(v4);
        break;
    case 15:
        *v15 = v4->unk_3F0[v13].unk_00_val1_0;
        break;
    case 16:
        *v15 = v4->unk_3F0[v13].unk_04[v14];
        break;
    case 17:
        v3 = AllocMonZeroed(11);
        ov104_0222DF40(&v4->unk_3F0[v13], v3, ov104_0223ADA0(v4));
        *v15 = GetMonData(v3, 177, NULL);
        Heap_FreeToHeap(v3);
        break;
    case 18:
        v5 = ov104_0223AA74(v4->unk_04, 1);

        for (v10 = 0; v10 < (17 + 1); v10++) {
            v0[v10] = 0;
        }

        v3 = AllocMonZeroed(11);

        for (v10 = 0; v10 < v5; v10++) {
            ov104_0222DF40(&v4->unk_3F0[v10], v3, ov104_0223ADA0(v4));

            v7 = GetMonData(v3, 177, NULL);
            v8 = GetMonData(v3, 178, NULL);

            if (v7 == v8) {
                v8 = 0xff;
            }

            v0[v7]++;

            if (v8 != 0xff) {
                v0[v8]++;
            }
        }

        Heap_FreeToHeap(v3);

        v9 = 0;

        for (v10 = 0; v10 < (17 + 1); v10++) {
            if (v0[v9] < v0[v10]) {
                v9 = v10;
            }
        }

        if (v0[v9] <= 1) {
            *v15 = 0xff;
        } else {
            *v15 = v9;
        }
        break;
    case 19:
        *v15 = ov104_0223AF34(v4);
        break;
    case 20:
        *v15 = ov104_02234440(v4, v13);
        break;
    case 21:
        ov104_02234474(v4);
        break;
    case 22:
        ov104_02234480(v4);
        break;
    case 23:
        *v15 = ov104_0223443C(v4);
        break;
    case 24:
        *v15 = v4->unk_57C;
        break;
    case 26:
        *v15 = v4->unk_57D;
        break;
    case 27:
        sub_0209BA80(v4);
        break;
    case 28:
        *v15 = ov104_0223AED4(v4->unk_04);
        break;
    case 29:
        *v15 = v4->unk_04;
        break;
    case 30:
        sub_02019E2C(v1->unk_00, 3, 3, 10, 26, 11, v13);
        sub_0201C3C0(v1->unk_00, 3);
        break;
    case 31:
        v4->unk_500 = sub_0200D9E8(ov104_022338B4, ov104_0222E924(param0->unk_00), 5);
        break;
    case 32:
        if (v4->unk_500 != NULL) {
            sub_0200DA58(v4->unk_500);
            v4->unk_500 = NULL;
        }
        break;
    case 33:
        ov104_0222E278(&(v4->unk_34[0]), v4->unk_18[v4->unk_06], 11, 178);
        ov104_0222E278(&(v4->unk_34[1]), v4->unk_18[v4->unk_06 + 7], 11, 178);
        break;
    case 34:
        v6 = ov104_0223AA50(v4->unk_04);

        for (v10 = 0; v10 < v6; v10++) {
            v3 = Party_GetPokemonBySlotIndex(v4->unk_4D4, v10);
            sub_0200B538(param0->unk_00->unk_44, v10, sub_02076B10(v3));
        }
        break;
    case 35:
        *v15 = ov104_022347F8(v4);
        break;
    case 36:
        ov104_02234790(v4);
        break;
    case 37:
        *v15 = 0;

        if (v4->unk_04 == 0) {
            if ((v4->unk_0C + 1) == 21) {
                *v15 = 1;
            } else if ((v4->unk_0C + 1) == 49) {
                *v15 = 2;
            }
        }
        break;
    case 38:
        ov104_0223AE30(v4);
        break;
    case 39:
        ov104_0222E330(v4->unk_3F0, v4->unk_3D2, v4->unk_3DA, v4->unk_3E0, NULL, 4, 11, 179);
        break;
    case 40:
        ov104_0223ADB0(v4);
        break;
    case 41:
        *v15 = v4->unk_0B;
        v4->unk_0B = 1;
        break;
    }

    return 0;
}

void ov104_022338B4 (UnkStruct_0201CD38 * param0, void * param1)
{
    int v0;
    UnkStruct_ov104_0223C4CC * v1 = param1;

    v0 = sub_020192F8(v1->unk_00, 2);

    if (v0 >= 255) {
        sub_0201C63C(v1->unk_00, 2, 3, 0);
    } else {
        sub_0201C63C(v1->unk_00, 2, 4, 1);
    }

    return;
}

BOOL ov104_022338E0 (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;
    u16 * v1 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v1 = v0->unk_14;

    return 0;
}

BOOL ov104_022338FC (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;
    u16 v1 = ov104_0222FC00(param0);
    u16 v2 = ov104_0222FC00(param0);
    u16 * v3 = ov104_0222FBE4(param0);

    v0 = sub_0209B978(param0->unk_00->unk_00);
    *v3 = ov104_022347A4(v0, v1, v2);

    return 1;
}

BOOL ov104_0223392C (UnkStruct_ov104_0222E930 * param0)
{
    u16 v0 = ov104_0222EA48(param0);

    param0->unk_78[0] = v0;
    ov104_0222E974(param0, ov104_0223394C);

    return 1;
}

static BOOL ov104_0223394C (UnkStruct_ov104_0222E930 * param0)
{
    UnkStruct_ov104_0223ADA0 * v0;
    u16 v1 = ov104_0222FC8C(param0, param0->unk_78[0]);

    v0 = sub_0209B978(param0->unk_00->unk_00);

    if (v0->unk_702 >= 2) {
        v0->unk_702 = 0;
        return 1;
    }

    return 0;
}

BOOL ov104_0223397C (UnkStruct_ov104_0222E930 * param0)
{
    u16 * v0;
    UnkStruct_ov104_0223ADA0 * v1;
    UnkStruct_ov104_02230BE4 * v2 = sub_0209B970(param0->unk_00->unk_00);
    u16 v3 = (*((param0)->unk_1C++));

    v1 = sub_0209B978(param0->unk_00->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_34[v3].unk_00.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}
