#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/box_pokemon.h"
#include "overlay019/struct_ov19_021D5DF8_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021DC680.h"
#include "overlay019/struct_ov19_021DCD18.h"

#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_020218BC.h"
#include "party.h"
#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021D79F8.h"
#include "overlay019/ov19_021DA270.h"
#include "overlay019/ov19_021DC5F0.h"

static const struct {
    u16 unk_00;
    u16 unk_02;
} Unk_ov19_021E0234[] = {
    {144, 28},
    {192, 36},
    {144, 68},
    {192, 76},
    {144, 108},
    {192, 116},
};

static void ov19_021DC708(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DC79C(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DC8E8(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DCA18(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DCD64(UnkStruct_ov19_021DC680 * param0, u32 param1);
static void ov19_021DCDB4(UnkStruct_ov19_021DC680 * param0, VecFx32 * param1);
static void ov19_021DCE50(UnkStruct_ov19_021DC680 * param0, fx32 param1);
static void ov19_021DCEB8(UnkStruct_ov19_021DC680 * param0, BOOL param1);
static void ov19_021DCF50(UnkStruct_ov19_021DC680 * param0);

BOOL ov19_021DC5F0 (UnkStruct_ov19_021DC680 * param0, UnkStruct_ov19_021D61B0 * param1, const UnkStruct_ov19_021D4DF0 * param2, UnkStruct_02018340 * param3, UnkStruct_020218BC * param4, NARC * param5)
{
    param0->unk_00 = param1;
    param0->unk_0C = param2;
    param0->unk_08 = param4;
    param0->unk_04 = param3;
    param0->unk_38 = ov19_021D77D8(param1);
    param0->unk_10 = ov19_021D77E0(param1);

    if (ov19_021D5E08(param2) != 4) {
        param0->unk_30 = 14;
        param0->unk_34 = 0;
    } else {
        param0->unk_30 = 9;
        param0->unk_34 = (9 - 14) * 8;
    }

    param0->unk_2B = 0;
    param0->unk_2C = 0;

    ov19_021DA3CC(param0->unk_38, param0->unk_3C, 6);

    param0->unk_1C = Heap_AllocFromHeap(10, sizeof(VecFx32) * 6 * 8);
    param0->unk_14 = sub_020071D0(param5, 6, 1, &(param0->unk_18), 10);

    if ((param0->unk_14 == NULL) || (param0->unk_1C == NULL)) {
        return 0;
    }

    ov19_021DCDB4(param0, param0->unk_1C);

    return 1;
}

void ov19_021DC680 (UnkStruct_ov19_021DC680 * param0)
{
    if (param0->unk_14) {
        Heap_FreeToHeap(param0->unk_14);
    }

    if (param0->unk_1C != NULL) {
        Heap_FreeToHeap(param0->unk_1C);
    }

    ov19_021DCF50(param0);
}

void ov19_021DC6A0 (UnkStruct_ov19_021DC680 * param0)
{
    param0->unk_2B = 0;
    ov19_021DCD64(param0, param0->unk_2B);
    ov19_021DCEB8(param0, 1);
    sub_02019448(param0->unk_04, 2);
}

void ov19_021DC6C8 (UnkStruct_ov19_021DC680 * param0)
{
    ov19_021DCEB8(param0, 0);

    param0->unk_2B = 26;
    param0->unk_2C = (ov19_021D77C8(ov19_021DC708, param0, 0) != NULL);
}

BOOL ov19_021DC6F8 (UnkStruct_ov19_021DC680 * param0)
{
    return param0->unk_2C == 0;
}

static void ov19_021DC708 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC680 * v0 = (UnkStruct_ov19_021DC680 *)param1;
    fx32 v1;

    if (v0->unk_2B > 2) {
        v1 = -((2 * 8) << FX32_SHIFT);
        v0->unk_2B -= 2;
    } else {
        v1 = -((v0->unk_2B * 8) << FX32_SHIFT);
        v0->unk_2B = 0;
    }

    ov19_021DCD64(v0, v0->unk_2B);
    sub_02019448(v0->unk_04, 2);
    ov19_021DCE50(v0, v1);

    if (v0->unk_2B == 0) {
        v0->unk_2C = 0;
        sub_0200DA58(param0);
    }
}

void ov19_021DC768 (UnkStruct_ov19_021DC680 * param0)
{
    param0->unk_2C = (ov19_021D77C8(ov19_021DC79C, param0, 0) != NULL);
}

BOOL ov19_021DC788 (UnkStruct_ov19_021DC680 * param0)
{
    if (param0->unk_2C == 0) {
        ov19_021DCF50(param0);
        return 1;
    }

    return 0;
}

static void ov19_021DC79C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC680 * v0 = (UnkStruct_ov19_021DC680 *)param1;
    fx32 v1;

    if (v0->unk_2B < (26 - 2)) {
        v1 = ((2 * 8) << FX32_SHIFT);
        v0->unk_2B += 2;
    } else {
        v1 = ((26 - v0->unk_2B) * 8) << FX32_SHIFT;
        v0->unk_2B = 26;
    }

    if (v0->unk_2B > 2) {
        u32 v2, v3;

        v3 = (u32)((v1) >> FX32_SHIFT) / 8;
        v2 = v0->unk_2B - 2 - v3;

        sub_02019CB8(v0->unk_04, 2, 0x0, v0->unk_30, v2, 15, v3, 17);
    }

    ov19_021DCD64(v0, v0->unk_2B);
    sub_02019448(v0->unk_04, 2);
    ov19_021DCE50(v0, v1);

    if (v0->unk_2B == 26) {
        v0->unk_2C = 0;
        sub_0200DA58(param0);
    }
}

void ov19_021DC834 (UnkStruct_ov19_021DC680 * param0)
{
    int v0 = Party_GetCurrentCount(param0->unk_0C->unk_04);

    if (param0->unk_28 < v0) {
        int v1, v2;

        v2 = v0 - param0->unk_28;

        for (v1 = param0->unk_28; v1 < (6 - 1); v1++) {
            ov19_021DA418(&(param0->unk_3C[v1 + 1]), &(param0->unk_3C[v1]), 1);
            ov19_021DA3CC(param0->unk_38, &(param0->unk_3C[v1 + 1]), 1);

            if (param0->unk_3C[v1].unk_00 != NULL) {
                ov19_021DA754(param0->unk_38, &(param0->unk_3C[v1]), 1048 + 32 * v1);
            }
        }

        param0->unk_29 = v2;
        param0->unk_2A = 0;
        param0->unk_2C = (ov19_021D77C8(ov19_021DC8E8, param0, 0) != NULL);
    } else {
        param0->unk_2C = 0;
    }
}

static void ov19_021DC8E8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC680 * v0;
    VecFx32 * v1;
    int v2, v3, v4;

    v0 = (UnkStruct_ov19_021DC680 *)param1;
    v2 = v0->unk_28;
    v4 = v0->unk_29;
    v1 = ((VecFx32 *)(v0->unk_1C)) + ((v2 * 8) + v0->unk_2A);

    for (v3 = 0; v3 < v4; v3++) {
        if (v0->unk_3C[v2].unk_00 != NULL) {
            sub_02021C50(v0->unk_3C[v2].unk_00, v1);
        }

        v2++;
        v1 += 8;
    }

    if (++(v0->unk_2A) >= 8) {
        v0->unk_2C = 0;
        sub_0200DA58(param0);
    }
}

BOOL ov19_021DC95C (UnkStruct_ov19_021DC680 * param0)
{
    return param0->unk_2C == 0;
}

void ov19_021DC96C (UnkStruct_ov19_021DC680 * param0)
{
    u32 v0 = Party_GetCurrentCount(param0->unk_0C->unk_04) - 1;

    if (param0->unk_28 > v0) {
        VecFx32 v1;

        v1 = *sub_02021D28(param0->unk_3C[v0].unk_00);
        param0->unk_20 = (((Unk_ov19_021E0234[v0].unk_00 + param0->unk_34) << FX32_SHIFT) - v1.x) / 8;
        param0->unk_24 = ((Unk_ov19_021E0234[v0].unk_02 << FX32_SHIFT) - v1.y) / 8;
        param0->unk_2A = 0;
        param0->unk_28 = v0;
        param0->unk_2C = (ov19_021D77C8(ov19_021DCA18, param0, 0) != NULL);
    } else {
        param0->unk_2C = 0;
    }
}

BOOL ov19_021DCA08 (UnkStruct_ov19_021DC680 * param0)
{
    return param0->unk_2C == 0;
}

static void ov19_021DCA18 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC680 * v0;
    VecFx32 v1;
    BOOL v2;

    v0 = (UnkStruct_ov19_021DC680 *)param1;
    v1 = *sub_02021D28(v0->unk_3C[v0->unk_28].unk_00);

    if (++(v0->unk_2A) >= 8) {
        v1.x = (Unk_ov19_021E0234[v0->unk_28].unk_00 + v0->unk_34) << FX32_SHIFT;
        v1.y = Unk_ov19_021E0234[v0->unk_28].unk_02 << FX32_SHIFT;
        v2 = 1;
    } else {
        v1.x += v0->unk_20;
        v1.y += v0->unk_24;
        v2 = 0;
    }

    sub_02021C50(v0->unk_3C[v0->unk_28].unk_00, &v1);

    if (v2) {
        v0->unk_2C = 0;
        sub_0200DA58(param0);
    }
}

void ov19_021DCAC0 (UnkStruct_ov19_021DC680 * param0)
{
    u32 v0;

    if (param0->unk_0C->unk_110 == ov19_021D5E68(param0->unk_0C)) {
        ov19_021D84E0(param0->unk_10);
    }

    v0 = ov19_021D5E2C(param0->unk_0C);
    ov19_021DA3F0(param0->unk_38, &param0->unk_3C[v0], 1);
    param0->unk_28 = v0;
}

void ov19_021DCAFC (UnkStruct_ov19_021DC680 * param0, u32 param1)
{
    param0->unk_174 = 0;
    param0->unk_28 = param1;
    ov19_021DA7B8(param0->unk_38, &(param0->unk_3C[param1]), 1);
}

BOOL ov19_021DCB20 (UnkStruct_ov19_021DC680 * param0)
{
    UnkStruct_ov19_021DCD18 * v0 = &(param0->unk_3C[param0->unk_28]);

    switch (param0->unk_174) {
    case 0:
        if (ov19_021DA7E0(param0->unk_38, v0)) {
            const UnkStruct_ov19_021D5DF8 * v1 = ov19_021D7964(param0->unk_00);

            if (ov19_021D3B18(v1)) {
                if (ov19_021D3B20(v1)) {
                    ov19_021DA3F0(param0->unk_38, v0, 1);
                    return 1;
                } else {
                    ov19_021DA7B8(param0->unk_38, v0, 2);
                    param0->unk_174++;
                }
            }
        }
        break;
    case 1:
        if (ov19_021DA7E0(param0->unk_38, v0)) {
            return 1;
        }
        break;
    }

    return 0;
}

void ov19_021DCBA0 (UnkStruct_ov19_021DC680 * param0)
{
    if (ov19_021D5E10(param0->unk_0C) == 1) {
        u32 v0;
        int v1;

        v0 = ov19_021D5EC8(param0->unk_0C);

        for (v1 = 0; v1 < 6; v1++) {
            if (param0->unk_3C[v1].unk_00 != NULL) {
                ov19_021DA63C(param0->unk_38, &(param0->unk_3C[v1]), v0);
            }
        }
    }
}

void ov19_021DCBDC (UnkStruct_ov19_021DC680 * param0, u32 param1, u32 param2)
{
    if (param0->unk_3C[param1].unk_00 != NULL) {
        ov19_021DA690(param0->unk_38, &param0->unk_3C[param1], param2);
        ov19_021DA63C(param0->unk_38, &param0->unk_3C[param1], ov19_021D5EC8(param0->unk_0C));
        ov19_021DA694(param0->unk_38, &param0->unk_3C[param1], 0);
    }
}

void ov19_021DCC14 (UnkStruct_ov19_021DC680 * param0)
{
    u32 v0, v1;

    v0 = ov19_021D5E2C(param0->unk_0C);
    v1 = ov19_021D5EA0(param0->unk_0C);

    if (param0->unk_3C[v0].unk_00 != NULL) {
        ov19_021DA68C(param0->unk_38, &(param0->unk_3C[v0]), v1);
    }
}

void ov19_021DCC44 (UnkStruct_ov19_021DC680 * param0, u32 param1, u32 param2, UnkStruct_ov19_021DCD18 * param3)
{
    ov19_021DA418(&param0->unk_3C[param1], param3, 1);
    ov19_021DA754(param0->unk_38, param3, param2);
    ov19_021DA3CC(param0->unk_38, &param0->unk_3C[param1], 1);

    param0->unk_28 = param1;
}

void ov19_021DCC80 (UnkStruct_ov19_021DC680 * param0, u32 param1, const UnkStruct_ov19_021DCD18 * param2)
{
    u32 v0;
    u32 v1;
    UnkStruct_ov19_021DCD18 * v2;

    v0 = Party_GetCurrentCount(param0->unk_0C->unk_04) - 1;
    v1 = 1048 + 32 * v0;
    v2 = &param0->unk_3C[v0];

    ov19_021DA418(param2, v2, 1);
    ov19_021DA754(param0->unk_38, v2, v1);
    sub_02021E80(v2->unk_00, 1);
    ov19_021D78AC(v2->unk_00, 4 + v0);

    param0->unk_28 = param1;
}

void ov19_021DCCD4 (UnkStruct_ov19_021DC680 * param0, u32 param1, const UnkStruct_ov19_021DCD18 * param2)
{
    u32 v0;
    u32 v1;
    UnkStruct_ov19_021DCD18 * v2;

    v0 = param1;
    v1 = 1048 + 32 * v0;
    v2 = &param0->unk_3C[v0];

    ov19_021DA418(param2, v2, 1);
    ov19_021DA754(param0->unk_38, v2, v1);
    sub_02021E80(v2->unk_00, 1);
    ov19_021D78AC(v2->unk_00, 4 + v0);

    param0->unk_28 = param1;
}

UnkStruct_ov19_021DCD18 * ov19_021DCD18 (UnkStruct_ov19_021DC680 * param0, u32 param1)
{
    GF_ASSERT(param1 < 6);
    return &param0->unk_3C[param1];
}

void ov19_021DCD30 (UnkStruct_ov19_021DC680 * param0, u32 param1, s32 * param2, s32 * param3)
{
    if (param1 == 6) {
        *param2 = 192 + param0->unk_34;
        *param3 = 184;
    } else {
        *param2 = Unk_ov19_021E0234[param1].unk_00 + param0->unk_34;
        *param3 = Unk_ov19_021E0234[param1].unk_02;
    }
}

static void ov19_021DCD64 (UnkStruct_ov19_021DC680 * param0, u32 param1)
{
    u32 v0, v1, v2;

    if (param1 <= 2) {
        v0 = ((2 - param1) * 15) * 2;
        v1 = 24;
        v2 = 0;
    } else {
        if (param1 >= 26) {
            return;
        }

        v0 = 0;
        v1 = 26 - param1;
        v2 = 24 - v1;
    }

    sub_020198C0(param0->unk_04, 2, ((u8 *)param0->unk_18->rawData) + v0, param0->unk_30, v2, 15, v1);
}

static void ov19_021DCDB4 (UnkStruct_ov19_021DC680 * param0, VecFx32 * param1)
{
    fx32 v0, v1;
    u32 v2, v3, v4;

    v4 = 0;

    for (v2 = 0; v2 < (6 - 1); v2++) {
        v0 = ((Unk_ov19_021E0234[v2].unk_00 - Unk_ov19_021E0234[v2 + 1].unk_00) * FX32_ONE) / 8;
        v1 = ((Unk_ov19_021E0234[v2].unk_02 - Unk_ov19_021E0234[v2 + 1].unk_02) * FX32_ONE) / 8;

        for (v3 = 0; v3 < (8 - 1); v3++) {
            param1[v3].x = ((Unk_ov19_021E0234[v2 + 1].unk_00 + param0->unk_34) * FX32_ONE) + (v0 * (v3 + 1));
            param1[v3].y = (Unk_ov19_021E0234[v2 + 1].unk_02 * FX32_ONE) + (v1 * (v3 + 1));
            param1[v3].z = 0;
        }

        param1[v3].x = ((Unk_ov19_021E0234[v2].unk_00 + param0->unk_34) * FX32_ONE);
        param1[v3].y = (Unk_ov19_021E0234[v2].unk_02 * FX32_ONE);
        param1[v3].z = 0;
        param1 += 8;
    }
}

static void ov19_021DCE50 (UnkStruct_ov19_021DC680 * param0, fx32 param1)
{
    VecFx32 v0;
    int v1;

    for (v1 = 0; v1 < 6; v1++) {
        if (param0->unk_3C[v1].unk_00 != NULL) {
            v0 = *sub_02021D28(param0->unk_3C[v1].unk_00);
            v0.y += param1;
            sub_02021C50(param0->unk_3C[v1].unk_00, &v0);

            if (param1 < 0) {
                if (v0.y < 851968) {
                    sub_02021CAC(param0->unk_3C[v1].unk_00, 1);
                }
            } else {
                if (v0.y >= 851968) {
                    sub_02021CAC(param0->unk_3C[v1].unk_00, 0);
                }
            }
        } else {
            break;
        }
    }
}

static void ov19_021DCEB8 (UnkStruct_ov19_021DC680 * param0, BOOL param1)
{
    Pokemon * v0;
    int v1, v2, v3;

    v3 = (param1) ? 0 : 208;
    v2 = Party_GetCurrentCount(param0->unk_0C->unk_04);

    for (v1 = 0; v1 < v2; v1++) {
        v0 = Party_GetPokemonBySlotIndex(param0->unk_0C->unk_04, v1);
        ov19_021DA428(param0->unk_38, (BoxPokemon *)v0, Unk_ov19_021E0234[v1].unk_00 + param0->unk_34, Unk_ov19_021E0234[v1].unk_02 + v3, 1, 4 + v1, 1048 + 32 * v1, &param0->unk_3C[v1]);
        sub_02021CAC(param0->unk_3C[v1].unk_00, param1);
    }
}

static void ov19_021DCF50 (UnkStruct_ov19_021DC680 * param0)
{
    int v0, v1;

    v1 = Party_GetCurrentCount(param0->unk_0C->unk_04);

    for (v0 = 0; v0 < v1; v0++) {
        if (param0->unk_3C[v0].unk_00) {
            ov19_021DA3F0(param0->unk_38, &(param0->unk_3C[v0]), 1);
        }
    }
}
