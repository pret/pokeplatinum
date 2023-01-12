#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02039E30_decl.h"

#include "unk_020068C8.h"
#include "unk_02017E74.h"
#include "unk_02039C80.h"
#include "map_header.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02[900];
    u8 unk_70A[900];
    u16 unk_A8E[900];
    u8 unk_1196[16];
} UnkStruct_02039C80;

struct UnkStruct_02039E30_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    UnkStruct_02039C80 unk_04;
};

typedef struct UnkStruct_02039EBC_t {
    u16 unk_00[900];
} UnkStruct_02039EBC;

static void sub_02039C80 (UnkStruct_02039C80 * param0, const u16 param1, int param2)
{
    u8 v0, v1;
    u8 v2;
    void * v3;
    u8 * v4;

    {
        int v5;

        param0->unk_01 = 0;
        param0->unk_00 = 0;

        for (v5 = 0; v5 < (30 * 30); v5++) {
            param0->unk_02[v5] = 0;
            param0->unk_70A[v5] = 0;
            param0->unk_A8E[v5] = 0;
        }

        for (v5 = 0; v5 < 16; v5++) {
            param0->unk_1196[v5] = 0;
        }
    }

    v3 = sub_02006ADC(41, param1, 11);
    v4 = &((u8 *)(v3))[0];

    param0->unk_01 = *v4;
    v4++;

    param0->unk_00 = *v4;
    v4++;

    v0 = *v4;
    v4++;

    v1 = *v4;
    v4++;

    v2 = *v4;
    v4++;

    GF_ASSERT(v2 <= 16);
    MI_CpuCopy8(v4, param0->unk_1196, v2);

    v4 += (v2);

    if (v0) {
        MI_CpuCopy8(v4, param0->unk_02, param0->unk_01 * param0->unk_00 * 2);
        v4 += (param0->unk_01 * param0->unk_00 * 2);
    } else {
        MI_CpuFill16(param0->unk_02, param2, param0->unk_01 * param0->unk_00 * sizeof(u16));
    }

    if (v1) {
        MI_CpuCopy8(v4, param0->unk_70A, param0->unk_01 * param0->unk_00);
        v4 += (param0->unk_01 * param0->unk_00);
    }

    MI_CpuCopy8(v4, param0->unk_A8E, param0->unk_01 * param0->unk_00 * 2);
    sub_020181C4(v3);
}

UnkStruct_02039E30 * sub_02039D6C (void)
{
    return sub_02039D78(11);
}

UnkStruct_02039E30 * sub_02039D78 (u32 param0)
{
    UnkStruct_02039E30 * v0;

    v0 = sub_02018144(param0, sizeof(UnkStruct_02039E30));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_02 = 0;

    return v0;
}

void sub_02039D90 (UnkStruct_02039E30 * param0, UnkStruct_02039E30 * param1)
{
    GF_ASSERT(param1 != NULL);
    GF_ASSERT(param0 != NULL);
    GF_ASSERT(param0 != param1);

    *param1 = *param0;
}

void sub_02039DC0 (const int param0, UnkStruct_02039E30 * param1)
{
    u16 v0;

    v0 = MapHeader_GetMapMatrixID(param0);
    sub_02039C80(&param1->unk_04, v0, param0);

    param1->unk_02 = v0;
    param1->unk_01 = param1->unk_04.unk_00;
    param1->unk_00 = param1->unk_04.unk_01;
}

void sub_02039DE4 (UnkStruct_02039E30 * const param0)
{
    sub_020181C4(param0);
}

u16 sub_02039DEC (int param0, const UnkStruct_02039E30 * param1)
{
    GF_ASSERT((param0 < (param1->unk_00 * param1->unk_01)));
    return param1->unk_04.unk_A8E[param0];
}

int sub_02039E10 (const UnkStruct_02039E30 * param0)
{
    GF_ASSERT((param0 != NULL));
    return param0->unk_00;
}

int sub_02039E20 (const UnkStruct_02039E30 * param0)
{
    GF_ASSERT((param0 != NULL));
    return param0->unk_01;
}

u16 sub_02039E30 (const UnkStruct_02039E30 * param0, int param1, int param2)
{
    int v0 = param0->unk_00;
    int v1 = param0->unk_01;

    GF_ASSERT(0 <= param1 && param1 < v0);
    GF_ASSERT(0 <= param2 && param2 < v1);

    return param0->unk_04.unk_02[param1 + param2 * v0];
}

u16 sub_02039E68 (const UnkStruct_02039E30 * param0, const int param1)
{
    int v0 = param0->unk_00 * param0->unk_01;

    GF_ASSERT(0 <= param1 && param1 < v0);
    return param0->unk_04.unk_02[param1];
}

u8 sub_02039E88 (const UnkStruct_02039E30 * param0)
{
    return param0->unk_02;
}

int sub_02039E8C (const UnkStruct_02039E30 * param0, const int param1, const int param2, const int param3, const int param4)
{
    GF_ASSERT(param2 < param4);
    GF_ASSERT((param2 + param3 * param4) < (30 * 30));

    return param0->unk_04.unk_70A[param2 + param3 * param4];
}

UnkStruct_02039EBC * sub_02039EBC (const u32 param0)
{
    int v0;
    void * v1;
    u8 * v2;
    UnkStruct_02039EBC * v3;

    v3 = sub_02018144(param0, sizeof(UnkStruct_02039EBC));
    v1 = sub_02006ADC(41, 0, param0);
    v2 = &((u8 *)(v1))[0];

    v2++;
    v2++;
    v2++;
    v2++;

    v0 = *v2;

    v2++;
    v2 += (v0);

    MI_CpuCopy8(v2, v3->unk_00, 30 * 30 * 2);
    sub_020181C4(v1);

    return v3;
}

void sub_02039EF0 (UnkStruct_02039EBC * param0)
{
    GF_ASSERT(param0 != NULL);
    sub_020181C4(param0);
}

int sub_02039F04 (const UnkStruct_02039EBC * param0, const u32 param1, const u32 param2)
{
    return param0->unk_00[param1 + param2 * 30];
}

int sub_02039F10 (const int param0, const u16 param1, const u16 param2)
{
    UnkStruct_02039C80 v0;
    u16 v1, v2;

    sub_02039C80(&v0, param0, 0);

    GF_ASSERT(param1 < v0.unk_01);
    GF_ASSERT(param2 < v0.unk_00);

    return v0.unk_02[param2 * v0.unk_01 + param1];
}

const u16 sub_02039F74 (const int param0, const UnkStruct_02039E30 * param1)
{
    u16 v0;
    int v1 = param0 % param1->unk_00;
    int v2 = param0 / param1->unk_00;

    GF_ASSERT((param1 != NULL));

    v0 = sub_02039DEC(param0, param1);
    return v0;
}

void sub_02039F8C (UnkStruct_02039E30 * param0)
{
    u16 * Unk_ov5_0220210C = param0->unk_04.unk_A8E;
    u8 * v1 = param0->unk_04.unk_70A;
    int v2 = param0->unk_01;
    int v3 = param0->unk_00;
    int v4, v5;

    if (param0->unk_02 != 0) {
        return;
    }

    Unk_ov5_0220210C[23 + v3 * 21] = 176;
    Unk_ov5_0220210C[24 + v3 * 21] = 176;
    Unk_ov5_0220210C[23 + v3 * 22] = 176;
    Unk_ov5_0220210C[24 + v3 * 22] = 176;

    v1[23 + v3 * 21] = 2;
    v1[24 + v3 * 21] = 2;
    v1[23 + v3 * 22] = 2;
    v1[24 + v3 * 22] = 2;
}

void sub_02039FE0 (UnkStruct_02039E30 * param0)
{
    int v0, v1;
    u16 * Unk_ov5_0220210C = param0->unk_04.unk_A8E;
    int v3 = param0->unk_01;
    int v4 = param0->unk_00;

    if (param0->unk_02 != 0) {
        return;
    }

    Unk_ov5_0220210C[v4 * 15 + 28] = 119;
    Unk_ov5_0220210C[v4 * 16 + 27] = 120;
    Unk_ov5_0220210C[v4 * 16 + 28] = 121;
    Unk_ov5_0220210C[v4 * 17 + 27] = 122;
}
