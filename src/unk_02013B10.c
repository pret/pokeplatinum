#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "unk_0200D9E8.h"
#include "unk_02013B10.h"
#include "heap.h"

typedef struct UnkStruct_02013B10_t {
    void * unk_00[2];
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A[2];
} UnkStruct_02013B10;

typedef struct UnkStruct_02013BE0_t {
    u32 unk_00[192];
    u32 unk_300[192];
    UnkStruct_02013B10 * unk_600;
    SysTask * unk_604;
    BOOL unk_608;
    s16 unk_60C[192];
    u8 unk_78C;
    u8 unk_78D;
    u32 unk_790;
    u32 unk_794;
    s16 unk_798;
    s16 unk_79A;
} UnkStruct_02013BE0;

static void sub_02013FC8(void);
static void sub_02013FD0(const UnkStruct_02013BE0 * param0);
static void sub_02013E58(SysTask * param0, void * param1);
static void sub_02013F04(SysTask * param0, void * param1);

UnkStruct_02013B10 * sub_02013B10 (int param0, void * param1, void * param2)
{
    UnkStruct_02013B10 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02013B10));
    memset(v0, 0, sizeof(UnkStruct_02013B10));

    v0->unk_09 = 1;
    v0->unk_00[0] = param1;
    v0->unk_00[1] = param2;

    return v0;
}

void sub_02013B40 (UnkStruct_02013B10 * param0)
{
    GF_ASSERT(param0);

    Heap_FreeToHeap(param0);
    param0 = NULL;
}

void * sub_02013B54 (const UnkStruct_02013B10 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_00[param0->unk_08];
}

const void * sub_02013B68 (const UnkStruct_02013B10 * param0)
{
    GF_ASSERT(param0);
    return param0->unk_00[param0->unk_08 ^ 1];
}

void sub_02013B80 (UnkStruct_02013B10 * param0, u8 param1)
{
    GF_ASSERT(param0);
    param0->unk_09 = param1;
}

void sub_02013B94 (UnkStruct_02013B10 * param0)
{
    if (param0 == NULL) {
        return;
    }

    if (param0->unk_09 == 0) {
        return;
    }

    param0->unk_08 ^= 1;
}

void sub_02013BA8 (void)
{
    MI_StopDma(0);
    MI_WaitDma(0);
}

void sub_02013BB8 (const void * param0, void * param1, int param2, int param3)
{
    if (param3 == 1) {
        MI_HBlankDmaCopy32(0, param0, param1, param2);
    } else {
        MI_HBlankDmaCopy16(0, param0, param1, param2);
    }
}

UnkStruct_02013BE0 * sub_02013BE0 (int param0)
{
    UnkStruct_02013BE0 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02013BE0));
    memset(v0, 0, sizeof(UnkStruct_02013BE0));
    v0->unk_600 = sub_02013B10(param0, v0->unk_00, v0->unk_300);

    return v0;
}

void sub_02013C10 (UnkStruct_02013BE0 * param0, u8 param1, u8 param2, u16 param3, fx32 param4, s16 param5, u32 param6, u32 param7, u32 param8)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_604 == NULL);

    param0->unk_78C = param1;
    param0->unk_78D = param2;
    param0->unk_798 = 0;
    param0->unk_79A = param5;
    param0->unk_790 = param6;
    param0->unk_794 = param7;

    sub_02013DFC(param0->unk_60C, 192, param3, param4);

    param0->unk_604 = SysTask_Start(sub_02013E58, param0, param8);

    MI_CpuFill32(param0->unk_00, param0->unk_794, sizeof(u32) * 192);
    MI_CpuFill32(param0->unk_300, param0->unk_794, sizeof(u32) * 192);
}

void sub_02013CA4 (UnkStruct_02013BE0 * param0, u8 param1, u8 param2, u16 param3, fx32 param4, s16 param5, u32 param6, u32 param7, u32 param8)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_604 == NULL);

    param0->unk_78C = param1;
    param0->unk_78D = param2;
    param0->unk_798 = 0;
    param0->unk_79A = param5;
    param0->unk_790 = param6;
    param0->unk_794 = param7;

    sub_02013DFC(param0->unk_60C, 192, param3, param4);

    param0->unk_604 = SysTask_Start(sub_02013F04, param0, param8);

    MI_CpuFill32(param0->unk_00, param0->unk_794, sizeof(u32) * 192);
    MI_CpuFill32(param0->unk_300, param0->unk_794, sizeof(u32) * 192);
}

void sub_02013D38 (UnkStruct_02013BE0 * param0)
{
    void * v0;

    GF_ASSERT(param0);

    if (param0->unk_604) {
        SysTask_Done(param0->unk_604);
        param0->unk_604 = NULL;

        v0 = sub_02013B54(param0->unk_600);
        memset(v0, param0->unk_794, sizeof(u32) * 192);
    }
}

void sub_02013D74 (UnkStruct_02013BE0 * param0)
{
    sub_02013D38(param0);
    sub_02013FC8();
    sub_02013B40(param0->unk_600);
    Heap_FreeToHeap(param0);
}

void * sub_02013D94 (UnkStruct_02013BE0 * param0)
{
    return sub_02013B54(param0->unk_600);
}

void sub_02013DA4 (UnkStruct_02013BE0 * param0)
{
    void * v0;

    if (param0 == NULL) {
        return;
    }

    if (param0->unk_604) {
        sub_02013B94(param0->unk_600);

        v0 = sub_02013B54(param0->unk_600);
        MI_CpuFill32(v0, param0->unk_794, sizeof(u32) * 192);
    }
}

void sub_02013DDC (UnkStruct_02013BE0 * param0)
{
    if (param0 == NULL) {
        return;
    }

    if (param0->unk_604) {
        sub_02013FC8();
        sub_02013FD0(param0);
    }
}

void sub_02013DFC (s16 * param0, u32 param1, u16 param2, fx32 param3)
{
    int v0;
    u16 v1;

    v1 = 0;

    for (v0 = 0; v0 < param1; v0++) {
        param0[v0] = FX_Mul(FX_SinIdx(v1), param3) >> FX32_SHIFT;
        v1 += param2;
    }
}

static void sub_02013E58 (SysTask * param0, void * param1)
{
    UnkStruct_02013BE0 * v0 = param1;
    int v1;
    u32 * v2;
    u8 v3;
    s16 v4;
    u16 v5;

    v2 = sub_02013B54(v0->unk_600);
    v3 = v0->unk_798 / 100;

    for (v1 = v0->unk_78C; v1 <= v0->unk_78D; v1++) {
        v4 = v2[v1] & 0xffff;
        v5 = v2[v1] >> 16;

        v4 += v0->unk_60C[v3];
        v2[v1] = (v5 << 16) | (v4 & 0xffff);
        v3 = (v3 + 1) % 192;
    }

    v0->unk_798 += v0->unk_79A;

    if (v0->unk_798 >= (192 * 100)) {
        v0->unk_798 %= (192 * 100);
    } else {
        if (v0->unk_798 < 0) {
            v0->unk_798 += (192 * 100);
        }
    }
}

static void sub_02013F04 (SysTask * param0, void * param1)
{
    UnkStruct_02013BE0 * v0 = param1;
    int v1;
    u32 * v2;
    u8 v3;
    s16 v4;
    u16 v5;

    v2 = sub_02013B54(v0->unk_600);
    v3 = v0->unk_798 / 100;

    for (v1 = v0->unk_78C; v1 <= v0->unk_78D; v1++) {
        v4 = v2[v1] & 0xffff;
        v5 = v2[v1] >> 16;

        v5 += v0->unk_60C[(v3 + 180) % 192];
        v2[v1] = (v5 << 16) | (v4 & 0xffff);
        v3 = (v3 + 1) % 192;
    }

    v0->unk_798 += v0->unk_79A;

    if (v0->unk_798 >= (192 * 100)) {
        v0->unk_798 %= (192 * 100);
    } else {
        if (v0->unk_798 < 0) {
            v0->unk_798 += (192 * 100);
        }
    }
}

void sub_02013FC8 (void)
{
    sub_02013BA8();
}

void sub_02013FD0 (const UnkStruct_02013BE0 * param0)
{
    const void * v0;

    GF_ASSERT(param0);
    v0 = sub_02013B68(param0->unk_600);
    DC_FlushRange(v0, sizeof(u32) * 192);

    sub_02013BB8(v0, (void *)param0->unk_790, sizeof(u32), 1);
}
