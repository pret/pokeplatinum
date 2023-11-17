#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "core_sys.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/union_02022594_020225E0.h"
#include "struct_defs/struct_0202CA28.h"
#include "overlay076/struct_ov76_0223B52C.h"
#include "overlay076/struct_ov76_0223DE00.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "game_overlay.h"
#include "unk_0200C6E4.h"
#include "unk_02022594.h"
#include "unk_0202C9F4.h"
#include "unk_02097B18.h"
#include "overlay012/ov12_02237E54.h"
#include "overlay076/ov76_0223B140.h"

FS_EXTERN_OVERLAY(overlay11);
FS_EXTERN_OVERLAY(overlay12);

static void NitroStaticInit (void)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay11), 2);
    Overlay_LoadByID(FS_OVERLAY_ID(overlay12), 2);
}

static void ov76_0223B15C (UnkUnion_02022594 * param0, u8 param1, u8 param2)
{
    param0->val1.unk_00 = param2 - 10;
    param0->val1.unk_02 = param1 - 10;
    param0->val1.unk_01 = param2 + 10;
    param0->val1.unk_03 = param1 + 10;
}

static void ov76_0223B174 (UnkUnion_02022594 * param0)
{
    param0->val1.unk_00 = 0;
    param0->val1.unk_02 = 0;
    param0->val1.unk_01 = 192;
    param0->val1.unk_03 = 255;
}

void ov76_0223B184 (UnkUnion_02022594 * param0, CellActorData * param1, BOOL param2)
{
    s16 v0, v1;

    if (param1 == NULL) {
        return;
    }

    if (param2 == 1) {
        sub_0200D4C4(param1, gCoreSys.touchX, gCoreSys.touchY);
        sub_0200D550(param1, &v0, &v1);
        ov76_0223B174(param0);
    } else {
        sub_0200D550(param1, &v0, &v1);
        ov76_0223B15C(param0, v0, v1);
    }
}

void ov76_0223B1E0 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_324[v0].unk_08 == NULL) {
            continue;
        }

        sub_0200D5DC(param0->unk_324[v0].unk_08, -(+7 * 8), -(-2 * 8));
    }
}

void ov76_0223B208 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    UnkStruct_0202CA28 * v1;

    v1 = param0->unk_04[param0->unk_3C4[0]].unk_04;

    for (v0 = 0; v0 < 8; v0++) {
        if (v1->unk_00[v0].unk_00 != 0) {
            param0->unk_324[v0].unk_04 = v1->unk_00[v0].unk_00;
            param0->unk_324[v0].unk_05 = v1->unk_00[v0].unk_01;
            param0->unk_324[v0].unk_06 = v1->unk_00[v0].unk_02;

            ov76_0223B52C(param0, v0);
            ov76_0223B184(param0->unk_324[v0].unk_0C, param0->unk_324[v0].unk_08, 0);

            param0->unk_324[v0].unk_00 = 1;
        } else {
            param0->unk_324[v0].unk_00 = 0;
            param0->unk_324[v0].unk_04 = 0;
        }
    }
}

int ov76_0223B278 (UnkStruct_ov76_0223DE00 * param0, u8 param1)
{
    int v0;
    u32 v1, v2;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_324[v0].unk_00 == 1) {
            continue;
        }

        param0->unk_324[v0].unk_04 = param0->unk_418.unk_08[param1];
        param0->unk_324[v0].unk_05 = 190;
        param0->unk_324[v0].unk_06 = 70;

        sub_020227A4(&v1, &v2);

        param0->unk_324[v0].unk_05 = v1;
        param0->unk_324[v0].unk_06 = v2;

        ov76_0223B52C(param0, v0);
        ov76_0223B314(param0, v0);

        param0->unk_324[v0].unk_00 = 1;

        return v0;
    }

    return 0xFF;
}

BOOL ov76_0223B2F8 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    u32 v1, v2;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_324[v0].unk_00 == 1) {
            continue;
        }

        return 1;
    }

    return 0;
}

void ov76_0223B314 (UnkStruct_ov76_0223DE00 * param0, u8 param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_324[v0].unk_00 != 1) {
            continue;
        }

        if (v0 == param1) {
            sub_0200D474(param0->unk_324[v0].unk_08, 0);
        } else {
            int v1 = sub_0200D488(param0->unk_324[v0].unk_08);

            if (v1 == 0) {
                sub_0200D474(param0->unk_324[v0].unk_08, v1 + 1);
            } else {
                sub_0200D474(param0->unk_324[v0].unk_08, v1 + 2);
            }
        }
    }
}

void ov76_0223B36C (UnkStruct_ov76_0223DE00 * param0, u8 param1, u8 param2)
{
    int v0;
    int v1;
    CellTransferStateData * v2;
    AnimationResourceCollection * v3;
    PaletteSys * v4;

    v2 = param0->unk_D4.unk_08;
    v3 = param0->unk_D4.unk_0C;
    v4 = param0->unk_D4.unk_14;

    sub_0200CD7C(v4, 3, v2, v3, 91, 293, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 21000 + 293);

    v0 = sub_02098140(param1);
    v1 = (param2 + 20000);

    sub_0200CBDC(v2, v3, 91, v0, 1, NNS_G2D_VRAM_TYPE_2DSUB, v1);
    sub_0200CE0C(v2, v3, 91, 93, 1, 22000 + 93);
    sub_0200CE3C(v2, v3, 91, 1, 1, 23000 + 1);
}

void ov76_0223B400 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0, v1;
    int v2;
    int v3[8];
    int v4[8];

    if (param0->unk_D4.unk_18C == 0) {
        return;
    }

    param0->unk_D4.unk_18C = 0;

    v2 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        v3[v0] = 0xFF;
        v4[v0] = 0xFF;

        if (param0->unk_324[v0].unk_08 != NULL) {
            v3[v0] = sub_0200D488(param0->unk_324[v0].unk_08);
            v4[v0] = v0;
            v2++;
        }
    }

    {
        int v5;
        int v6;

        for (v0 = 0; v0 < 8 - 1; v0++) {
            for (v1 = 8 - 1; v1 > v0; v1--) {
                if (v3[v1 - 1] >= v3[v1]) {
                    v5 = v3[v1];
                    v6 = v4[v1];
                    v3[v1] = v3[v1 - 1];
                    v4[v1] = v4[v1 - 1];
                    v3[v1 - 1] = v5;
                    v4[v1 - 1] = v6;
                }
            }
        }
    }

    {
        UnkStruct_0202CA28 v7;
        UnkStruct_0202CA28 v8;

        for (v0 = 0; v0 < 8; v0++) {
            v7.unk_00[v0].unk_00 = param0->unk_324[v0].unk_04;
            v7.unk_00[v0].unk_01 = param0->unk_324[v0].unk_05;
            v7.unk_00[v0].unk_02 = param0->unk_324[v0].unk_06;
        }

        v8 = v7;

        for (v0 = 0; v0 < 8; v0++) {
            if (v4[v0] == 0xFF) {
                param0->unk_324[v0].unk_04 = 0;
                param0->unk_324[v0].unk_05 = 0;
                param0->unk_324[v0].unk_06 = 0;
                continue;
            }

            param0->unk_324[v0].unk_04 = v8.unk_00[v4[v0]].unk_00;
            param0->unk_324[v0].unk_05 = v8.unk_00[v4[v0]].unk_01;
            param0->unk_324[v0].unk_06 = v8.unk_00[v4[v0]].unk_02;

            if (param0->unk_324[v4[v0]].unk_08 == NULL) {
                continue;
            }

            sub_0200D474(param0->unk_324[v4[v0]].unk_08, v0);
        }
    }
}

BOOL ov76_0223B52C (UnkStruct_ov76_0223DE00 * param0, u8 param1)
{
    int v0;
    int v1;
    UnkStruct_ov76_0223B52C * v2;
    UnkStruct_ov104_0223F9E0 v3;
    CellTransferStateData * v4;
    AnimationResourceCollection * v5;
    PaletteSys * v6;

    v4 = param0->unk_D4.unk_08;
    v5 = param0->unk_D4.unk_0C;
    v6 = param0->unk_D4.unk_14;
    v2 = &param0->unk_324[param1];

    if (v2->unk_00 == 1) {
        GF_ASSERT(0);
        return 0;
    }

    ov76_0223B36C(param0, v2->unk_04, param1);

    v3.unk_00 = v2->unk_05;
    v3.unk_02 = v2->unk_06;
    v3.unk_04 = 0;
    v3.unk_06 = 0;
    v3.unk_0C = 0;
    v3.unk_30 = 0;
    v3.unk_08 = 0;
    v3.unk_10 = 2;
    v3.unk_2C = 1;
    v3.unk_14[4] = 0xffffffff;
    v3.unk_14[5] = 0xffffffff;

    v0 = sub_02098140(v2->unk_04);
    v1 = (param1 + 20000);

    v3.unk_14[0] = v1;
    v3.unk_14[1] = 21000 + 293;
    v3.unk_14[2] = 22000 + 93;
    v3.unk_14[3] = 23000 + 1;
    v2->unk_08 = sub_0200CE6C(v4, v5, &v3);

    sub_0200D330(v2->unk_08);

    return 1;
}

BOOL ov76_0223B5C4 (UnkStruct_ov76_0223DE00 * param0, u32 param1, u8 param2)
{
    if (param0->unk_324[param2].unk_00 == 0) {
        return 1;
    }

    switch (param1) {
    case 0:
        if (param0->unk_D4.unk_00 == 0xFF) {
            param0->unk_D4.unk_00 = param2;
            ov76_0223B314(param0, param2);
        }
        break;
    case 2:
    {
        s16 v0, v1;

        if (param0->unk_D4.unk_00 == param2) {
            ov76_0223B184(param0->unk_324[param2].unk_0C, param0->unk_324[param2].unk_08, 1);
            ov76_0223B758(param0, param2);
            ov76_0223B7D4(param0, param2);
        }
    }
    break;
    case 3:
    case 1:
    {
        BOOL v2;

        if (param0->unk_D4.unk_00 == 0xFF) {
            v2 = ov76_0223B6C4(param0, param2);
            ov76_0223B184(param0->unk_324[param2].unk_0C, param0->unk_324[param2].unk_08, 0);

            if (v2 == 0) {
                ov76_0223B704(param0, param2);
            }

            param0->unk_D4.unk_00 = 0xFF;
        }
    }
    break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 1;
}

void ov76_0223B678 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_324[v0].unk_00 != 1) {
            continue;
        }

        ov76_0223B704(param0, v0);
    }
}

void ov76_0223B69C (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_324[v0].unk_00 != 1) {
            continue;
        }

        sub_0200D3F4(param0->unk_324[v0].unk_08, param1);
    }
}

BOOL ov76_0223B6C4 (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    int v0;
    s16 v1, v2;

    if (param0->unk_324[param1].unk_00 == 0) {
        return 1;
    }

    sub_0200D550(param0->unk_324[param1].unk_08, &v1, &v2);
    v0 = ov12_02237E54(v1, v2, 190, 70);

    if (v0 > 60) {
        return 0;
    }

    return 1;
}

void ov76_0223B704 (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    int v0;
    int v1;

    v0 = sub_02098140(param0->unk_324[param1].unk_04);
    v1 = (param1 + 20000);

    sub_0200D070(param0->unk_D4.unk_0C, v1);
    sub_0200D0F4(param0->unk_324[param1].unk_08);

    param0->unk_324[param1].unk_08 = NULL;
    param0->unk_324[param1].unk_00 = 0;
    param0->unk_324[param1].unk_04 = 0;
    param0->unk_324[param1].unk_05 = 0;
    param0->unk_324[param1].unk_06 = 0;

    ov76_0223B15C(param0->unk_324[param1].unk_0C, 0, 0);
}

void ov76_0223B758 (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    BOOL v0;

    v0 = ov76_0223B6C4(param0, param1);

    if (v0 == 0) {
        sub_0200D810(param0->unk_324[param1].unk_08, GX_OAM_MODE_XLU);
    } else {
        sub_0200D810(param0->unk_324[param1].unk_08, GX_OAM_MODE_NORMAL);
    }
}

BOOL ov76_0223B78C (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    int v1;
    UnkStruct_0202CA28 * v2;

    v1 = param0->unk_3C4[0];
    v2 = param0->unk_04[v1].unk_04;

    for (v0 = 0; v0 < 8; v0++) {
        if ((param0->unk_324[v0].unk_04 != v2->unk_00[v0].unk_00) || (param0->unk_324[v0].unk_05 != v2->unk_00[v0].unk_01) || (param0->unk_324[v0].unk_06 != v2->unk_00[v0].unk_02)) {
            return 1;
        }
    }

    return 0;
}

void ov76_0223B7D4 (UnkStruct_ov76_0223DE00 * param0, int param1)
{
    s16 v0, v1;

    sub_0200D550(param0->unk_324[param1].unk_08, &v0, &v1);

    param0->unk_324[param1].unk_05 = (u8)v0;
    param0->unk_324[param1].unk_06 = (u8)v1;
}

void ov76_0223B808 (UnkStruct_ov76_0223DE00 * param0)
{
    int v0;
    UnkStruct_0202CA28 v1;

    for (v0 = 0; v0 < 8; v0++) {
        v1.unk_00[v0].unk_00 = param0->unk_324[v0].unk_04;
        v1.unk_00[v0].unk_01 = param0->unk_324[v0].unk_05;
        v1.unk_00[v0].unk_02 = param0->unk_324[v0].unk_06;
    }

    sub_0202CA40(param0->unk_00->unk_20, &v1, param0->unk_3C4[0]);
}

void ov76_0223B848 (UnkStruct_0202CA28 * param0, UnkStruct_ov76_0223DE00 * param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        param0->unk_00[v0].unk_00 = param1->unk_324[v0].unk_04;
        param0->unk_00[v0].unk_01 = param1->unk_324[v0].unk_05;
        param0->unk_00[v0].unk_02 = param1->unk_324[v0].unk_06;
    }
}
