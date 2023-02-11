#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_02073C74_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0207F248.h"
#include "struct_defs/struct_02081CF4.h"
#include "struct_defs/struct_020831B4.h"
#include "struct_defs/struct_02083D1C.h"
#include "functypes/funcptr_02084808.h"

#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "unk_0207070C.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "unk_0207E0B8.h"
#include "unk_020819DC.h"
#include "unk_02082C2C.h"
#include "unk_02083370.h"
#include "unk_02097624.h"
#include "overlay118/ov118_021D0D80.h"

static void sub_02083AD0(UnkStruct_0207F248 * param0, int * param1);
static void sub_0208472C(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084808(UnkStruct_0207F248 * param0, int * param1);
static void sub_02083E8C(UnkStruct_0207F248 * param0, u8 param1);
static void sub_02083FDC(UnkStruct_0207F248 * param0, u8 param1, u8 param2);
static void sub_02084134(UnkStruct_0207F248 * param0);
static void sub_02084420(UnkStruct_0207F248 * param0, u8 param1);
static void sub_020848A8(UnkStruct_0207F248 * param0, int * param1);
static void sub_020848C0(UnkStruct_0207F248 * param0, int * param1);
static void sub_020848D8(UnkStruct_0207F248 * param0, int * param1);
static void sub_020848F0(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084908(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084920(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084938(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084950(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084968(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084980(UnkStruct_0207F248 * param0, int * param1);
static void sub_02084998(UnkStruct_0207F248 * param0, int * param1);
static void sub_020849B0(UnkStruct_0207F248 * param0, int * param1);
static void sub_020849C8(UnkStruct_0207F248 * param0, int * param1);
static void sub_020849E0(UnkStruct_0207F248 * param0, int * param1);
static void sub_020849FC(UnkStruct_0207F248 * param0, int * param1);
static int sub_02084A18(UnkStruct_0207F248 * param0);
static void sub_02084760(UnkStruct_0207F248 * param0, int * param1);
static void sub_020833BC(UnkStruct_0207F248 * param0, int * param1);
static void sub_0208347C(UnkStruct_0207F248 * param0, int * param1);
static void sub_020834B0(UnkStruct_0207F248 * param0, int * param1);
static void sub_02083700(UnkStruct_0207F248 * param0, int * param1);
static void sub_020837C0(UnkStruct_0207F248 * param0, int * param1);
static void sub_020837F4(UnkStruct_0207F248 * param0, int * param1);
static int sub_0208384C(void * param0);
static int sub_020838C4(void * param0);
static int sub_020838F4(void * param0);
static int sub_02083990(void * param0);
static void sub_020846CC(UnkStruct_0207F248 * param0, int * param1);
static void sub_020844B0(UnkStruct_0207F248 * param0, int * param1);
static void sub_020845E8(UnkStruct_0207F248 * param0, int * param1);
static void sub_020846FC(UnkStruct_0207F248 * param0, int * param1);
static void sub_020839FC(UnkStruct_0207F248 * param0, int * param1);

static const u32 Unk_020F2458[] = {
    (const u32)sub_02083AD0,
    (const u32)sub_0208472C,
    (const u32)sub_020833BC,
    (const u32)sub_0208347C,
    (const u32)sub_020834B0,
    (const u32)sub_02083700,
    (const u32)sub_020837C0,
    (const u32)sub_020837F4,
    (const u32)sub_020839FC,
    0xFFFFFFFE,
    0xFFFFFFFE,
    (const u32)sub_020844B0,
    (const u32)sub_020845E8,
    (const u32)sub_020846CC,
    (const u32)sub_02084760,
    (const u32)sub_020846FC,
    (const u32)sub_020848A8,
    (const u32)sub_02084938,
    (const u32)sub_020848F0,
    (const u32)sub_020848D8,
    (const u32)sub_02084908,
    (const u32)sub_020848C0,
    (const u32)sub_02084950,
    (const u32)sub_02084920,
    (const u32)sub_02084968,
    (const u32)sub_02084980,
    (const u32)sub_02084998,
    (const u32)sub_020849B0,
    (const u32)sub_020849C8,
    (const u32)sub_020849E0,
    (const u32)sub_020849FC,
    0xFFFFFFFE
};

u32 sub_02083370 (u8 param0)
{
    return Unk_020F2458[param0];
}

void sub_0208337C (UnkStruct_0207F248 * param0)
{
    sub_0200DC9C(&param0->unk_254[0], 1);
    sub_0201AD10(&param0->unk_254[0]);
    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);
    sub_0201A8FC(&param0->unk_254[0]);
}

static void sub_020833BC (UnkStruct_0207F248 * param0, int * param1)
{
    UnkStruct_02081CF4 v0;

    sub_0208337C(param0);
    sub_020826F4(param0, 38, 0);

    param0->unk_6FC = sub_02013A04(3, 12);

    sub_02013A6C(param0->unk_6FC, param0->unk_6AC[3], sub_02083370(3));
    sub_02013A6C(param0->unk_6FC, param0->unk_6AC[4], sub_02083370(4));
    sub_02013A6C(param0->unk_6FC, param0->unk_6AC[9], sub_02083370(9));

    v0.unk_00 = param0->unk_6FC;
    v0.unk_04 = &param0->unk_04[35];
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 3;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    sub_0200DC48(&param0->unk_04[35], 1, 1, 14);

    param0->unk_700 = sub_02001B7C(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void sub_0208347C (UnkStruct_0207F248 * param0, int * param1)
{
    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);

    param0->unk_5A4->unk_23 = 3;
    *param1 = 32;
}

static void sub_020834B0 (UnkStruct_0207F248 * param0, int * param1)
{
    Pokemon * v0;
    int v1;
    int v2 = 17;
    UnkStruct_0203CDB0 * v3;

    sub_0200DC9C(&param0->unk_04[35], 1);
    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);

    v3 = param0->unk_5A4->unk_1C;

    if (param0->unk_704[param0->unk_B11].unk_0C == 0) {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
        sub_0200B1B8(param0->unk_69C, 81, param0->unk_6A8);
        sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
        sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);
    } else if (sub_0207D570(param0->unk_5A4->unk_04, param0->unk_704[param0->unk_B11].unk_0C, 1, 12) == 1) {
        u32 v4;

        v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);
        v4 = 0;

        sub_02074B30(v0, 6, &v4);
        sub_02077928(v0);

        if ((v3 == NULL) || (v3->unk_1C->unk_00 < 573) || (v3->unk_1C->unk_00 > 583)) {
            v1 = sub_02077A00(v0);

            if ((param0->unk_704[param0->unk_B11].unk_0C == 112) && (v1 == 0)) {
                v2 = 18;
            }
        }

        sub_0200B1B8(param0->unk_69C, 82, param0->unk_6A8);
        sub_0200B5CC(param0->unk_6A0, 0, sub_02076B10(v0));
        sub_0200B70C(param0->unk_6A0, 1, param0->unk_704[param0->unk_B11].unk_0C);
        sub_0200C388(param0->unk_6A0, param0->unk_6A4, param0->unk_6A8);

        param0->unk_704[param0->unk_B11].unk_0C = 0;

        sub_02083040(param0, param0->unk_B11, param0->unk_704[param0->unk_B11].unk_0C);
    } else {
        sub_0200B1B8(param0->unk_69C, 83, param0->unk_6A4);
    }

    sub_0200E060(&param0->unk_04[34], 1, (1 + 9), 15);
    sub_0201ADA4(&param0->unk_04[34], 15);
    sub_0208274C(param0);

    *param1 = v2;
}

int sub_02083658 (UnkStruct_0207F248 * param0)
{
    if (sub_0201D724(param0->unk_B10) == 0) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_0200E084(&param0->unk_04[34], 1);
            sub_020826E0(param0, 29, 1);
            sub_0200D414(param0->unk_5B0[6], 0);
            return 1;
        }
    }

    return 17;
}

int sub_020836A8 (UnkStruct_0207F248 * param0)
{
    if (sub_0201D724(param0->unk_B10) == 0) {
        if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            sub_0200E084(&param0->unk_04[34], 1);
            sub_020819B4(param0);
            return 19;
        }
    }

    return 18;
}

int sub_020836E4 (UnkStruct_0207F248 * param0)
{
    if (ov118_021D0DBC(param0) == 1) {
        sub_020819CC(param0);
        return 17;
    }

    return 19;
}

static void sub_02083700 (UnkStruct_0207F248 * param0, int * param1)
{
    UnkStruct_02081CF4 v0;

    sub_0208337C(param0);
    sub_020826F4(param0, 39, 0);

    param0->unk_6FC = sub_02013A04(3, 12);

    sub_02013A6C(param0->unk_6FC, param0->unk_6AC[6], sub_02083370(6));
    sub_02013A6C(param0->unk_6FC, param0->unk_6AC[7], sub_02083370(7));
    sub_02013A6C(param0->unk_6FC, param0->unk_6AC[9], sub_02083370(9));

    v0.unk_00 = param0->unk_6FC;
    v0.unk_04 = &param0->unk_04[35];
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = 3;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;
    v0.unk_0B_6 = 0;

    sub_0200DC48(&param0->unk_04[35], 1, 1, 14);

    param0->unk_700 = sub_02001B7C(&v0, 8, 0, 0, 12, PAD_BUTTON_B);
    *param1 = 15;
}

static void sub_020837C0 (UnkStruct_0207F248 * param0, int * param1)
{
    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);

    param0->unk_5A4->unk_23 = 7;
    *param1 = 32;
}

static void sub_020837F4 (UnkStruct_0207F248 * param0, int * param1)
{
    sub_0200DC9C(&param0->unk_04[35], 1);
    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);
    sub_02082708(param0, 43, 1);

    param0->unk_B04.unk_00 = sub_0208384C;
    param0->unk_B04.unk_04 = sub_020838C4;
    param0->unk_B0E = 26;
    *param1 = 24;
}

static int sub_0208384C (void * param0)
{
    UnkStruct_0207F248 * v0 = param0;
    Pokemon * v1;

    v0 = param0;
    v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);

    if (sub_02097788(v0->unk_5A4->unk_08, v1, 12) != 0xFFFFFFFF) {
        v0->unk_704[v0->unk_B11].unk_0C = 0;
        sub_02083040(v0, v0->unk_B11, v0->unk_704[v0->unk_B11].unk_0C);
        sub_02082708(v0, 46, 0);
    } else {
        sub_02082708(v0, 50, 0);
    }

    v0->unk_B0E = 20;

    return 24;
}

static int sub_020838C4 (void * param0)
{
    UnkStruct_0207F248 * v0 = param0;

    sub_02082708(v0, 47, 0);

    v0->unk_B04.unk_00 = sub_020838F4;
    v0->unk_B04.unk_04 = sub_02083990;
    v0->unk_B0E = 26;

    return 24;
}

static int sub_020838F4 (void * param0)
{
    UnkStruct_0207F248 * v0 = param0;

    if (sub_0207D570(v0->unk_5A4->unk_04, v0->unk_704[v0->unk_B11].unk_0C, 1, 12) == 1) {
        Pokemon * v1;
        u32 v2;

        v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);
        v2 = 0;

        sub_02074B30(v1, 6, &v2);
        sub_02077928(v1);
        sub_02077A00(v1);

        v0->unk_704[v0->unk_B11].unk_0C = 0;

        sub_02083040(v0, v0->unk_B11, v0->unk_704[v0->unk_B11].unk_0C);
        sub_02082708(v0, 51, 0);
    } else {
        sub_02082708(v0, 83, 0);
    }

    v0->unk_B0E = 20;

    return 24;
}

static int sub_02083990 (void * param0)
{
    UnkStruct_0207F248 * v0 = param0;

    sub_0200E084(&v0->unk_04[34], 1);
    sub_020826E0(v0, 29, 1);
    sub_0200D414(v0->unk_5B0[6], 0);

    return 1;
}

int sub_020839BC (UnkStruct_0207F248 * param0)
{
    if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_0200E084(&param0->unk_04[34], 1);
        sub_020826E0(param0, 29, 1);
        sub_0200D414(param0->unk_5B0[6], 0);
        return 1;
    }

    return 20;
}

static void sub_020839FC (UnkStruct_0207F248 * param0, int * param1)
{
    if (param0->unk_704[param0->unk_B11].unk_12 == 0) {
        sub_02001BC4(param0->unk_700, NULL);
        sub_02013A3C(param0->unk_6FC);
        param0->unk_5A4->unk_23 = 0;
        *param1 = 32;
        return;
    }

    sub_0208337C(param0);
    sub_02082708(param0, 195, 1);

    param0->unk_B04.unk_00 = sub_02083A78;
    param0->unk_B04.unk_04 = sub_02083AA4;
    param0->unk_B0E = 26;
    *param1 = 24;
}

int sub_02083A78 (void * param0)
{
    UnkStruct_0207F248 * v0;
    Pokemon * v1;

    v0 = param0;
    v1 = Party_GetPokemonBySlotIndex(v0->unk_5A4->unk_00, v0->unk_B11);

    sub_0207893C(v1);

    v0->unk_5A4->unk_23 = 0;
    return 32;
}

int sub_02083AA4 (void * param0)
{
    UnkStruct_0207F248 * v0 = param0;

    sub_0200E084(&v0->unk_04[34], 1);
    sub_020826E0(v0, 29, 1);
    sub_0200D414(v0->unk_5B0[6], 0);

    return 1;
}

static void sub_02083AD0 (UnkStruct_0207F248 * param0, int * param1)
{
    s16 v0, v1;

    param0->unk_B0F_6 = 1;
    param0->unk_B0F_0 = param0->unk_B11;

    sub_0200D414(param0->unk_5B0[6], 0);
    sub_0200D50C(param0->unk_5B0[6], &v0, &v1);
    sub_0200D494(param0->unk_5B0[7], v0, v1);
    sub_02021D6C(param0->unk_5B0[7], sub_020805D0(param0->unk_5A4->unk_21, param0->unk_B0F_0) + 2);
    sub_02021CAC(param0->unk_5B0[7], 1);
    sub_0207F8F8(param0, param0->unk_B0F_0);
    sub_0200E084(&param0->unk_04[33], 1);
    sub_0208337C(param0);
    sub_020826E0(param0, 30, 1);

    *param1 = 28;
}

void sub_02083B88 (UnkStruct_0207F248 * param0)
{
    param0->unk_B0F_6 = 0;
    sub_02021CAC(param0->unk_5B0[7], 0);

    if (param0->unk_B11 < 6) {
        sub_0207F8F8(param0, param0->unk_B11);
    }

    sub_0207F8F8(param0, param0->unk_B0F_0);
    sub_020826E0(param0, 29, 1);
}

void sub_02083BD4 (UnkStruct_0207F248 * param0)
{
    u16 * v0;
    u16 * v1;
    s8 v2, v3, v4, v5;
    u16 v6;

    param0->unk_7F8.unk_300[0] = param0->unk_B11;
    param0->unk_7F8.unk_300[1] = param0->unk_B0F_0;
    param0->unk_7F8.unk_304 = 1;
    param0->unk_7F8.unk_306 = 0;
    param0->unk_7F8.unk_305 = 0;

    if (param0->unk_7F8.unk_300[0] & 1) {
        param0->unk_7F8.unk_302[0] = 1;
    } else {
        param0->unk_7F8.unk_302[0] = 0;
    }

    if (param0->unk_7F8.unk_300[1] & 1) {
        param0->unk_7F8.unk_302[1] = 1;
    } else {
        param0->unk_7F8.unk_302[1] = 0;
    }

    v0 = (u16 *)sub_02019FE4(param0->unk_00, 2);
    v1 = (u16 *)sub_02019FE4(param0->unk_00, 1);

    v2 = param0->unk_704[param0->unk_7F8.unk_300[0]].unk_14;
    v3 = param0->unk_704[param0->unk_7F8.unk_300[0]].unk_15;
    v4 = param0->unk_704[param0->unk_7F8.unk_300[1]].unk_14;
    v5 = param0->unk_704[param0->unk_7F8.unk_300[1]].unk_15;

    for (v6 = 0; v6 < 6; v6++) {
        memcpy(&param0->unk_7F8.unk_00[0][v6 * 16], &v0[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&param0->unk_7F8.unk_180[0][v6 * 16], &v1[v2 + (v3 + v6) * 32], 16 * 2);
        memcpy(&param0->unk_7F8.unk_00[1][v6 * 16], &v0[v4 + (v5 + v6) * 32], 16 * 2);
        memcpy(&param0->unk_7F8.unk_180[1][v6 * 16], &v1[v4 + (v5 + v6) * 32], 16 * 2);
    }

    sub_02021CAC(param0->unk_5B0[6], 0);
    sub_02021CAC(param0->unk_5B0[7], 0);
}

BOOL sub_02083D1C (UnkStruct_0207F248 * param0)
{
    UnkStruct_02083D1C * v0 = &param0->unk_7F8;

    switch (v0->unk_305) {
    case 0:
        sub_02005748(1696);
        v0->unk_305 = 1;
        break;
    case 1:
        v0->unk_306 += 1;

        sub_02083E8C(param0, 0);
        sub_02083E8C(param0, 1);
        sub_02083FDC(param0, 0, v0->unk_302[0]);
        sub_02083FDC(param0, 1, v0->unk_302[1]);
        sub_0201C3C0(param0->unk_00, 2);
        sub_0201C3C0(param0->unk_00, 1);

        if (v0->unk_306 == 16) {
            v0->unk_305 = 2;
        }
        break;
    case 2:
        sub_02084134(param0);
        sub_02005748(1696);
        v0->unk_305 = 3;
        break;
    case 3:
        v0->unk_306 -= 1;

        sub_02083E8C(param0, 0);
        sub_02083E8C(param0, 1);
        sub_02083FDC(param0, 0, v0->unk_302[0] ^ 1);
        sub_02083FDC(param0, 1, v0->unk_302[1] ^ 1);
        sub_0201C3C0(param0->unk_00, 2);
        sub_0201C3C0(param0->unk_00, 1);

        if (v0->unk_306 == 0) {
            v0->unk_305 = 4;
        }

        break;

    case 4:
        Party_SwapSlots(param0->unk_5A4->unk_00, v0->unk_300[0], v0->unk_300[1]);
        sub_02021CAC(param0->unk_5B0[6], 1);

        v0->unk_304 = 0;
        param0->unk_B0F_6 = 0;

        sub_0207F8F8(param0, param0->unk_B11);
        sub_0207F8F8(param0, param0->unk_B0F_0);
        sub_020826E0(param0, 29, 0);

        return 1;
    }

    return 0;
}

static void sub_02083E8C (UnkStruct_0207F248 * param0, u8 param1)
{
    UnkStruct_02083D1C * v0;
    s8 v1, v2;
    u8 v3;

    v0 = &param0->unk_7F8;
    v1 = param0->unk_704[v0->unk_300[param1]].unk_14;
    v2 = param0->unk_704[v0->unk_300[param1]].unk_15;

    sub_02019CB8(param0->unk_00, 2, 0, v1, v2, 16, 6, 16);
    sub_02019CB8(param0->unk_00, 1, 0, v1, v2, 16, 6, 16);

    if (v0->unk_302[param1] == 0) {
        sub_020198E8(param0->unk_00, 2, v1, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], v0->unk_306, 0, 16, 6);
        sub_020198E8(param0->unk_00, 1, v1, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], v0->unk_306, 0, 16, 6);
    } else {
        sub_020198E8(param0->unk_00, 2, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_00[param1], 0, 0, 16, 6);
        sub_020198E8(param0->unk_00, 1, v1 + v0->unk_306, v2, 16 - v0->unk_306, 6, &v0->unk_180[param1], 0, 0, 16, 6);
    }
}

static void sub_02083FDC (UnkStruct_0207F248 * param0, u8 param1, u8 param2)
{
    UnkStruct_02083D1C * v0;
    s16 v1, v2;

    v0 = &param0->unk_7F8;

    sub_0200D50C(param0->unk_5B0[0 + v0->unk_300[param1]], &v1, &v2);

    if (param2 == 0) {
        param0->unk_704[v0->unk_300[param1]].unk_16 -= 8;
        param0->unk_704[v0->unk_300[param1]].unk_1A -= 8;
        param0->unk_704[v0->unk_300[param1]].unk_1E -= 8;
        v1 -= 8;
    } else {
        param0->unk_704[v0->unk_300[param1]].unk_16 += 8;
        param0->unk_704[v0->unk_300[param1]].unk_1A += 8;
        param0->unk_704[v0->unk_300[param1]].unk_1E += 8;
        v1 += 8;
    }

    sub_0200D494(param0->unk_704[v0->unk_300[param1]].unk_24, param0->unk_704[v0->unk_300[param1]].unk_16, param0->unk_704[v0->unk_300[param1]].unk_18);
    sub_0200D494(param0->unk_5B0[10 + v0->unk_300[param1]], param0->unk_704[v0->unk_300[param1]].unk_1A, param0->unk_704[v0->unk_300[param1]].unk_1C);
    sub_0200D494(param0->unk_5B0[16 + v0->unk_300[param1]], param0->unk_704[v0->unk_300[param1]].unk_1E, param0->unk_704[v0->unk_300[param1]].unk_20);
    sub_0200D494(param0->unk_5B0[22 + v0->unk_300[param1]], param0->unk_704[v0->unk_300[param1]].unk_1E + 8, param0->unk_704[v0->unk_300[param1]].unk_20);
    sub_0200D494(param0->unk_5B0[0 + v0->unk_300[param1]], v1, v2);
}

static void sub_02084134 (UnkStruct_0207F248 * param0)
{
    UnkStruct_020831B4 * v0;
    UnkStruct_02083D1C * v1;
    UnkStruct_0200D0F4 * v2;
    s16 v3;

    v1 = &param0->unk_7F8;

    v0 = Heap_AllocFromHeap(12, sizeof(UnkStruct_020831B4));
    *v0 = param0->unk_704[v1->unk_300[0]];

    param0->unk_704[v1->unk_300[0]] = param0->unk_704[v1->unk_300[1]];
    param0->unk_704[v1->unk_300[1]] = *v0;

    Heap_FreeToHeapExplicit(12, v0);

    v3 = param0->unk_704[v1->unk_300[0]].unk_16;
    param0->unk_704[v1->unk_300[0]].unk_16 = param0->unk_704[v1->unk_300[1]].unk_16;
    param0->unk_704[v1->unk_300[1]].unk_16 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_18;
    param0->unk_704[v1->unk_300[0]].unk_18 = param0->unk_704[v1->unk_300[1]].unk_18;
    param0->unk_704[v1->unk_300[1]].unk_18 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_1A;
    param0->unk_704[v1->unk_300[0]].unk_1A = param0->unk_704[v1->unk_300[1]].unk_1A;
    param0->unk_704[v1->unk_300[1]].unk_1A = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_1C;
    param0->unk_704[v1->unk_300[0]].unk_1C = param0->unk_704[v1->unk_300[1]].unk_1C;
    param0->unk_704[v1->unk_300[1]].unk_1C = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_1E;
    param0->unk_704[v1->unk_300[0]].unk_1E = param0->unk_704[v1->unk_300[1]].unk_1E;
    param0->unk_704[v1->unk_300[1]].unk_1E = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_20;
    param0->unk_704[v1->unk_300[0]].unk_20 = param0->unk_704[v1->unk_300[1]].unk_20;
    param0->unk_704[v1->unk_300[1]].unk_20 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_14;
    param0->unk_704[v1->unk_300[0]].unk_14 = param0->unk_704[v1->unk_300[1]].unk_14;
    param0->unk_704[v1->unk_300[1]].unk_14 = v3;

    v3 = param0->unk_704[v1->unk_300[0]].unk_15;
    param0->unk_704[v1->unk_300[0]].unk_15 = param0->unk_704[v1->unk_300[1]].unk_15;
    param0->unk_704[v1->unk_300[1]].unk_15 = v3;

    sub_020821F8(param0, v1->unk_300[0]);
    sub_020821F8(param0, v1->unk_300[1]);
    sub_020822F4(param0, v1->unk_300[0]);
    sub_020822F4(param0, v1->unk_300[1]);

    sub_02084420(param0, 0);
    sub_02084420(param0, 1);

    sub_02083014(param0, v1->unk_300[0], param0->unk_704[v1->unk_300[0]].unk_0E_0);
    sub_02083014(param0, v1->unk_300[1], param0->unk_704[v1->unk_300[1]].unk_0E_0);

    sub_02083040(param0, v1->unk_300[0], param0->unk_704[v1->unk_300[0]].unk_0C);
    sub_02083040(param0, v1->unk_300[1], param0->unk_704[v1->unk_300[1]].unk_0C);

    sub_02083104(param0, v1->unk_300[0]);
    sub_02083104(param0, v1->unk_300[1]);
}

static void sub_02084420 (UnkStruct_0207F248 * param0, u8 param1)
{
    UnkStruct_02083D1C * v0;
    const u16 * v1;
    u16 * v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_7F8;
    v2 = v0->unk_00[param1];
    v1 = sub_0207F248(param0);

    if (param0->unk_704[v0->unk_300[param1]].unk_10 == 1) {
        for (v4 = 0; v4 < 9; v4++) {
            v3 = v2[3 * 16 + 6 + v4] & 0xf000;
            v2[3 * 16 + 6 + v4] = v3 | 0x17;
        }
    } else {
        for (v4 = 0; v4 < 9; v4++) {
            v3 = v2[3 * 16 + 6 + v4] & 0xf000;
            v2[3 * 16 + 6 + v4] = v3 | (v1[v4] & 0xfff);
        }
    }
}

static void sub_020844B0 (UnkStruct_0207F248 * param0, int * param1)
{
    u8 v0;

    sub_0200E084(&param0->unk_04[33], 1);
    sub_0208337C(param0);

    for (v0 = 0; v0 < param0->unk_5A4->unk_32_4; v0++) {
        if (param0->unk_5A4->unk_2C[v0] != 0) {
            continue;
        }

        param0->unk_5A4->unk_2C[v0] = param0->unk_B11 + 1;

        sub_02082508(param0, param0->unk_B11);
        sub_020826E0(param0, 34, 1);
        sub_0200D414(param0->unk_5B0[6], 0);

        if (v0 == param0->unk_5A4->unk_32_4 - 1) {
            sub_0207FD68(param0, 6);
        }

        *param1 = 1;
        return;
    }

    switch (param0->unk_5A4->unk_32_4) {
    case 1:
        sub_02082708(param0, 123, 1);
        break;
    case 2:
        sub_02082708(param0, 100, 1);
        break;
    case 3:
        sub_02082708(param0, 124, 1);
        break;
    case 4:
        sub_02082708(param0, 125, 1);
        break;
    case 5:
        sub_02082708(param0, 126, 1);
        break;
    }

    param0->unk_B0E = 23;
    *param1 = 24;
}

int sub_020845A8 (UnkStruct_0207F248 * param0)
{
    if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_0200E084(&param0->unk_04[34], 1);
        sub_020826E0(param0, 34, 1);
        sub_0200D414(param0->unk_5B0[6], 0);
        return 1;
    }

    return 23;
}

static void sub_020845E8 (UnkStruct_0207F248 * param0, int * param1)
{
    u8 v0;

    for (v0 = 0; v0 < param0->unk_5A4->unk_32_4; v0++) {
        if (param0->unk_5A4->unk_2C[v0] == param0->unk_B11 + 1) {
            param0->unk_5A4->unk_2C[v0] = 0;

            for (v0 = v0; v0 < param0->unk_5A4->unk_32_4 - 1; v0++) {
                param0->unk_5A4->unk_2C[v0] = param0->unk_5A4->unk_2C[v0 + 1];
                param0->unk_5A4->unk_2C[v0 + 1] = 0;
            }
            break;
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_704[v0].unk_29 == 0) {
            continue;
        }

        sub_02082508(param0, v0);
    }

    sub_0200E084(&param0->unk_04[33], 1);
    sub_0208337C(param0);
    sub_020826E0(param0, 29, 1);
    sub_0200D414(param0->unk_5B0[6], 0);

    *param1 = 1;
}

static void sub_020846CC (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 0;

    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);

    *param1 = 32;
}

static void sub_020846FC (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 0;

    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);

    *param1 = 32;
}

static void sub_0208472C (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 1;

    sub_02001BC4(param0->unk_700, NULL);
    sub_02013A3C(param0->unk_6FC);

    *param1 = 32;
}

static void sub_02084760 (UnkStruct_0207F248 * param0, int * param1)
{
    sub_0208337C(param0);
    sub_0200E084(&param0->unk_04[33], 1);

    *param1 = sub_02084780(param0);
}

int sub_02084780 (UnkStruct_0207F248 * param0)
{
    Pokemon * v0 = Party_GetPokemonBySlotIndex(param0->unk_5A4->unk_00, param0->unk_B11);

    if (GetMonData(v0, MON_DATA_162, NULL) == 0) {
        sub_0200B1B8(param0->unk_69C, 129, param0->unk_6A4);
        sub_02021CAC(param0->unk_5B0[22 + param0->unk_B11], 1);
    } else {
        sub_0200B1B8(param0->unk_69C, 130, param0->unk_6A4);
        param0->unk_B11 = 7;
    }

    sub_02082708(param0, 0xffffffff, 1);

    param0->unk_5A4->unk_23 = 0;
    param0->unk_B0E = 25;

    return 24;
}

static void sub_02084808 (UnkStruct_0207F248 * param0, int * param1)
{
    UnkFuncPtr_02084808 v0;
    u32 v1;
    u32 v2;

    v0 = (UnkFuncPtr_02084808)sub_0207070C(
        1, param0->unk_5A4->unk_23 - 11);

    if (v0 != NULL) {
        v1 = v0(param0->unk_5A4->unk_18);
    } else {
        v1 = 1;
    }

    switch (v1) {
    case 0:
        sub_02001BC4(param0->unk_700, NULL);
        sub_02013A3C(param0->unk_6FC);
        *param1 = 32;
        return;
    case 1:
        v2 = 104;
        break;
    case 2:
        v2 = 76;
        break;
    case 3:
        v2 = 196;
        break;
    case 4:
        v2 = 102;
        break;
    }

    sub_0200E084(&param0->unk_04[33], 1);
    sub_0208337C(param0);
    sub_02082708(param0, v2, 1);

    param0->unk_B0E = 3;
    *param1 = 24;
}

static void sub_020848A8 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 11;
    sub_02084808(param0, param1);
}

static void sub_020848C0 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 16;
    sub_02084808(param0, param1);
}

static void sub_020848D8 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 14;
    sub_02084808(param0, param1);
}

static void sub_020848F0 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 13;
    sub_02084808(param0, param1);
}

static void sub_02084908 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 15;
    sub_02084808(param0, param1);
}

static void sub_02084920 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 18;
    sub_02084808(param0, param1);
}

static void sub_02084938 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 12;
    sub_02084808(param0, param1);
}

static void sub_02084950 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 17;
    sub_02084808(param0, param1);
}

static void sub_02084968 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 19;
    sub_02084808(param0, param1);
}

static void sub_02084980 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 20;
    sub_02084808(param0, param1);
}

static void sub_02084998 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 21;
    sub_02084808(param0, param1);
}

static void sub_020849B0 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 22;
    sub_02084808(param0, param1);
}

static void sub_020849C8 (UnkStruct_0207F248 * param0, int * param1)
{
    param0->unk_5A4->unk_23 = 23;
    sub_02084808(param0, param1);
}

static void sub_020849E0 (UnkStruct_0207F248 * param0, int * param1)
{
    *param1 = sub_02084A18(param0);

    if (*param1 == 30) {
        param0->unk_B14[3] = 24 - 11;
    }
}

static void sub_020849FC (UnkStruct_0207F248 * param0, int * param1)
{
    *param1 = sub_02084A18(param0);

    if (*param1 == 30) {
        param0->unk_B14[3] = 25 - 11;
    }
}

static int sub_02084A18 (UnkStruct_0207F248 * param0)
{
    sub_0200E084(&param0->unk_04[33], 1);
    sub_0208337C(param0);

    param0->unk_B14[0] = param0->unk_704[param0->unk_B11].unk_08 / 5;

    if (param0->unk_704[param0->unk_B11].unk_06 <= param0->unk_B14[0]) {
        sub_02082708(param0, 138, 1);
        param0->unk_B0E = 3;
        return 24;
    } else {
        s16 v0, v1;

        param0->unk_B0F_6 = 1;
        param0->unk_B0F_0 = param0->unk_B11;

        sub_0200D414(param0->unk_5B0[6], 0);
        sub_0200D50C(param0->unk_5B0[6], &v0, &v1);
        sub_0200D494(param0->unk_5B0[7], v0, v1);
        sub_02021D6C(param0->unk_5B0[7], sub_020805D0(param0->unk_5A4->unk_21, param0->unk_B0F_0) + 2);
        sub_02021CAC(param0->unk_5B0[7], 1);
        sub_0207F8F8(param0, param0->unk_B0F_0);
        sub_020826E0(param0, 36, 1);

        param0->unk_B14[1] = 0;
        return 30;
    }
}

int sub_02084B34 (UnkStruct_0207F248 * param0)
{
    if (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        sub_0200E084(&param0->unk_04[34], 1);
        sub_020826E0(param0, 29, 1);
        sub_0200D414(param0->unk_5B0[6], 0);
        return 1;
    }

    return 3;
}
