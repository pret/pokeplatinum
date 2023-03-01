#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_strbuf_decl.h"

#include "functypes/funcptr_0201CE28.h"
#include "struct_defs/struct_0201D670.h"
#include "struct_defs/struct_0201D738.h"
#include "struct_defs/struct_0201D834.h"
#include "functypes/funcptr_0201D834.h"
#include "struct_defs/struct_0205AA50.h"

#include "unk_02002B7C.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D670.h"
#include "string/strbuf.h"

static int sub_0201D9E8(UnkStruct_0201D834 * param0);
static void sub_0201D97C(UnkStruct_0201CD38 * param0, void * param1);
static u8 sub_0201D67C(UnkFuncPtr_0201CE28 param0, void * param1, u32 param2);
static void sub_0201D6B0(u8 param0);
static void sub_0201DB48(UnkStruct_0201D834 * param0);
static void sub_0201DBD8(UnkStruct_0201D834 * param0);
static u8 * sub_0201DB50(void);

static const UnkStruct_0201D670 * Unk_02100840 = NULL;
static u8 Unk_021C04D8 = 0;

void sub_0201D670 (const UnkStruct_0201D670 * param0)
{
    Unk_02100840 = param0;
}

static UnkStruct_0201CD38 * Unk_021C04E0[8] = {0};

static u8 sub_0201D67C (UnkFuncPtr_0201CE28 param0, void * param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (Unk_021C04E0[v0] == NULL) {
            Unk_021C04E0[v0] = sub_0200DA20(param0, param1, param2);

            if (Unk_021C04E0[v0] == NULL) {
                v0 = 8;
            }

            break;
        }
    }

    return v0;
}

static void sub_0201D6B0 (u8 param0)
{
    GF_ASSERT(param0 < 8);
    GF_ASSERT(Unk_021C04E0[param0] != NULL);

    if ((param0 < 8) && (Unk_021C04E0[param0] != NULL)) {
        UnkStruct_0201D834 * v0 = sub_0201CED0(Unk_021C04E0[param0]);

        if (v0) {
            sub_0201DBD8(v0);
            Heap_FreeToHeap(v0);
        }

        sub_0200DA58(Unk_021C04E0[param0]);
        Unk_021C04E0[param0] = NULL;
    }
}

static BOOL sub_0201D6F8 (u8 param0)
{
    return Unk_021C04E0[param0] != NULL;
}

void sub_0201D710 (void)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        Unk_021C04E0[v0] = NULL;
    }
}

u8 sub_0201D724 (u8 param0)
{
    return sub_0201D6F8(param0);
}

void sub_0201D730 (u8 param0)
{
    sub_0201D6B0(param0);
}

u8 sub_0201D738 (UnkStruct_0205AA50 * param0, u32 param1, const Strbuf * param2, u32 param3, u32 param4, u32 param5, UnkFuncPtr_0201D834 param6)
{
    UnkStruct_0201D738 v0;

    v0.unk_00_val2 = param2;
    v0.unk_04 = param0;
    v0.unk_09 = param1;
    v0.unk_0A = param3;
    v0.unk_0B = param4;
    v0.unk_0C = param3;
    v0.unk_0E = param4;
    v0.unk_10 = Unk_02100840[param1].unk_02;
    v0.unk_12 = Unk_02100840[param1].unk_03;
    v0.unk_14 = Unk_02100840[param1].unk_04;
    v0.unk_15 = Unk_02100840[param1].unk_05;
    v0.unk_16 = Unk_02100840[param1].unk_06;
    v0.unk_17 = Unk_02100840[param1].unk_07;
    v0.unk_18 = 0;
    v0.unk_1A = 0;
    v0.unk_1B = 0xFF;

    return sub_0201D834(&v0, param5, param6);
}

u8 sub_0201D78C (UnkStruct_0205AA50 * param0, u32 param1, const Strbuf * param2, u32 param3, u32 param4, u32 param5, u32 param6, UnkFuncPtr_0201D834 param7)
{
    UnkStruct_0201D738 v0;

    v0.unk_00_val2 = param2;
    v0.unk_04 = param0;
    v0.unk_09 = param1;
    v0.unk_0A = param3;
    v0.unk_0B = param4;
    v0.unk_0C = param3;
    v0.unk_0E = param4;
    v0.unk_10 = Unk_02100840[param1].unk_02;
    v0.unk_12 = Unk_02100840[param1].unk_03;
    v0.unk_14 = Unk_02100840[param1].unk_04;
    v0.unk_15 = (((param6) >> 16) & 0xff);
    v0.unk_17 = (((param6) >> 8) & 0xff);
    v0.unk_16 = (((param6) >> 0) & 0xff);
    v0.unk_18 = 0;
    v0.unk_1A = 0;
    v0.unk_1B = 0xFF;

    return sub_0201D834(&v0, param5, param7);
}

u8 sub_0201D7E0 (UnkStruct_0205AA50 * param0, u32 param1, const Strbuf * param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, UnkFuncPtr_0201D834 param9)
{
    UnkStruct_0201D738 v0;

    v0.unk_00_val2 = param2;
    v0.unk_04 = param0;
    v0.unk_09 = param1;
    v0.unk_0A = param3;
    v0.unk_0B = param4;
    v0.unk_0C = param3;
    v0.unk_0E = param4;
    v0.unk_10 = param7;
    v0.unk_12 = param8;
    v0.unk_14 = Unk_02100840[param1].unk_04;
    v0.unk_15 = (((param6) >> 16) & 0xff);
    v0.unk_17 = (((param6) >> 8) & 0xff);
    v0.unk_16 = (((param6) >> 0) & 0xff);
    v0.unk_18 = 0;
    v0.unk_1A = 0;
    v0.unk_1B = 0xFF;

    return sub_0201D834(&v0, param5, param9);
}

u8 sub_0201D834 (const UnkStruct_0201D738 * param0, u32 param1, UnkFuncPtr_0201D834 param2)
{
    UnkStruct_0201D834 * v0;
    int v1;

    if (Unk_02100840 == NULL) {
        return 0xff;
    }

    v0 = Heap_AllocFromHeap(0, sizeof(UnkStruct_0201D834));

    v0->unk_27 = 1;
    v0->unk_28 = 0;
    v0->unk_29_0 = param1;
    v0->unk_2A = 0;
    v0->unk_2B = 0;
    v0->unk_2D = 0;

    for (v1 = 0; v1 < 7; v1++) {
        v0->unk_20[v1] = 0;
    }

    v0->unk_00 = *param0;
    v0->unk_00.unk_00_val1 = PLString_GetBuffer(v0->unk_00.unk_00_val2);
    v0->unk_1C = param2;

    Unk_021C04D8 = 0;
    sub_0201DB48(v0);

    if ((param1 != 0xff) && (param1 != 0)) {
        v0->unk_29_0--;
        v0->unk_29_7 = 1;
        v0->unk_2C = sub_0201D67C(sub_0201D97C, v0, 1);
        return v0->unk_2C;
    } else {
        u32 v2;

        v0->unk_29_0 = 0;
        v0->unk_29_7 = 0;

        v2 = 0;
        sub_0201D9FC(param0->unk_15, param0->unk_16, param0->unk_17);

        while (v2 < 1024) {
            if (sub_0201D9E8(v0) == 1) {
                break;
            }

            v2++;
        }

        if (param1 != 0xff) {
            sub_0201A954(v0->unk_00.unk_04);
        }

        sub_0201DBD8(v0);
        Heap_FreeToHeap(v0);

        return 8;
    }
}

static void sub_0201D97C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_0201D834 * v0;
    int v1;

    if (Unk_021C04D8) {
        return;
    }

    v0 = (UnkStruct_0201D834 *)param1;

    if (v0->unk_2D == 0) {
        v0->unk_2E = 0;
        sub_0201D9FC(v0->unk_00.unk_15, v0->unk_00.unk_16, v0->unk_00.unk_17);

        v1 = sub_0201D9E8(v0);

        switch (v1) {
        case 0:
            sub_0201A954(v0->unk_00.unk_04);
        case 3:
            if (v0->unk_1C != NULL) {
                v0->unk_2D = (v0->unk_1C)(&(v0->unk_00), v0->unk_2E);
            }
            break;
        case 1:
            sub_0201D6B0(v0->unk_2C);
            break;
        }
    } else {
        v0->unk_2D = (v0->unk_1C)(&(v0->unk_00), v0->unk_2E);
    }
}

static int sub_0201D9E8 (UnkStruct_0201D834 * param0)
{
    int v0;

    do {
        v0 = sub_02002D18(param0->unk_00.unk_09, param0);
    } while (v0 == 2);

    return v0;
}

static u16 Unk_021C0500[256];
static u16 Unk_021C04DE, Unk_021C04DA, Unk_021C04DC;

void sub_0201D9FC (u8 param0, u8 param1, u8 param2)
{
    int v0, v1, v2, v3, v4;
    u32 v5[4];

    v5[0] = 0;
    v5[1] = param0;
    v5[2] = param2;
    v5[3] = param1;

    Unk_021C04DE = param1;
    Unk_021C04DA = param0;
    Unk_021C04DC = param2;

    v4 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        for (v1 = 0; v1 < 4; v1++) {
            for (v2 = 0; v2 < 4; v2++) {
                for (v3 = 0; v3 < 4; v3++) {
                    Unk_021C0500[v4++] = (v5[v3] << 12) | (v5[v2] << 8) | (v5[v1] << 4) | (v5[v0]);
                }
            }
        }
    }
}

void sub_0201DAA0 (u32 param0, u32 param1)
{
    u32 v0;
    u16 * v1;
    u16 * v2;

    v1 = (u16 *)param0;
    v2 = (u16 *)param1;

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1++) << 24) >> 24;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)(*v1) >> 8;
    *v2++ = Unk_021C0500[v0];

    v0 = (u32)((*v1) << 24) >> 24;
    *v2 = Unk_021C0500[v0];
}

static void sub_0201DB48 (UnkStruct_0201D834 * param0)
{
    param0->unk_30 = NULL;
}

static u8 * sub_0201DB50 (void)
{
    NNSG2dCharacterData * v0;
    void * v1;
    u8 * v2;

    v2 = Heap_AllocFromHeap(0, 3 * 4 * 4 * 0x20);
    v1 = sub_02006F50(14, 5, 0, &v0, 0);

    MI_CpuCopy32(v0->pRawData, v2, 3 * 4 * 4 * 0x20);
    Heap_FreeToHeap(v1);

    return v2;
}

void sub_0201DB8C (UnkStruct_0201D834 * param0, u16 param1, u16 param2, u16 param3)
{
    UnkStruct_0205AA50 * v0 = param0->unk_00.unk_04;
    u8 * v1;

    if (param0->unk_30 == NULL) {
        param0->unk_30 = sub_0201DB50();
    }

    v1 = param0->unk_30;
    v1 = &v1[param3 * 12 * 0x20];

    param1 = (sub_0201C294(v0) - 3) * 8;
    param2 = 0;

    sub_0201ADDC(v0, v1, 0, 0, 24, 32, param1, param2, 24, 32);
}

static void sub_0201DBD8 (UnkStruct_0201D834 * param0)
{
    if (param0->unk_30) {
        Heap_FreeToHeap(param0->unk_30);
        param0->unk_30 = NULL;
    }
}
