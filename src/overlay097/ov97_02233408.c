#include "overlay097/ov97_02233408.h"

#include <nitro.h>
#include <string.h>

#include "overlay097/ov97_022337FC.h"
#include "overlay097/struct_ov97_0223222C.h"
#include "overlay097/struct_ov97_02232254.h"
#include "overlay097/struct_ov97_02232620.h"
#include "overlay097/struct_ov97_02232AC8.h"
#include "overlay097/struct_ov97_02233268.h"
#include "overlay097/struct_ov97_022335A8.h"
#include "overlay097/struct_ov97_022335C8.h"
#include "overlay097/struct_ov97_02233674.h"
#include "overlay097/struct_ov97_02233674_sub1.h"
#include "overlay097/struct_ov97_02233674_sub2.h"
#include "overlay097/struct_ov97_02233674_sub3.h"
#include "overlay097/struct_ov97_02233674_sub4.h"
#include "overlay097/struct_ov97_022339EC.h"
#include "overlay097/union_ov97_022334FC.h"

static UnkStruct_ov97_0223222C Unk_ov97_0223F1C0;

__attribute__((aligned(32))) static WMParentParam Unk_ov97_0223EA20 = {
    NULL,
    0x0,
    0x0,
    0x400131,
    0x0,
    0x1,
    0x9,
    0x0,
    0x0,
    0x0,
    0xC8,
    { 0x0, 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
    0x0,
    0x40,
    0x40
};

WMParentParam *ov97_02233408(void)
{
    return &Unk_ov97_0223EA20;
}

UnkStruct_ov97_0223222C *ov97_02233410(void)
{
    return &Unk_ov97_0223F1C0;
}

int ov97_02233418(void)
{
    return (int)ov97_02233410()->unk_00;
}

void ov97_02233424(int param0)
{
    ov97_02233410()->unk_00 = (u8)param0;
}

int ov97_02233430(void)
{
    return (int)ov97_02233410()->unk_01;
}

void ov97_0223343C(int param0)
{
    ov97_02233410()->unk_01 = (u8)param0;
}

int ov97_02233448(void)
{
    return (int)ov97_02233410()->unk_02;
}

void ov97_02233454(int param0)
{
    ov97_02233410()->unk_02 = (u8)param0;
}

u32 ov97_02233460(void)
{
    return (u32)ov97_02233410()->unk_03;
}

void ov97_0223346C(u32 param0)
{
    ov97_02233408()->channel = (u16)param0;
}

WMScanParam *ov97_02233478(void)
{
    return ov97_02233410()->unk_24;
}

u32 ov97_02233484(void)
{
    return ov97_02233410()->unk_2C;
}

u32 ov97_02233490(void)
{
    return ov97_02233410()->unk_30;
}

void *ov97_0223349C(void)
{
    return ov97_02233410()->unk_38;
}

void *ov97_022334A8(void)
{
    return ov97_02233410()->unk_3C;
}

WMBssDesc *ov97_022334B4(void)
{
    return ov97_02233410()->unk_28;
}

void ov97_022334C0(u16 param0)
{
    ov97_02233410()->unk_0C = param0;
}

BOOL ov97_022334CC(void)
{
    return ov97_02233410()->unk_14;
}

void ov97_022334D8(BOOL param0)
{
    ov97_02233410()->unk_14 = param0;
}

void ov97_022334E4(BOOL param0)
{
    ov97_02233410()->unk_18 = param0;
}

void ov97_022334F0(BOOL param0)
{
    ov97_02233410()->unk_20 = param0;
}

UnkUnion_ov97_022334FC *ov97_022334FC(void)
{
    return &ov97_02233410()->unk_90;
}

UnkStruct_ov97_02232620 *ov97_02233508(void)
{
    return &ov97_022334FC()->val2;
}

UnkStruct_ov97_02232254 *ov97_02233510(void)
{
    return &ov97_022334FC()->val1;
}

void ov97_02233518(void)
{
    UnkStruct_ov97_02232620 *v0 = ov97_02233508();

    MI_CpuClear8(v0, sizeof(UnkStruct_ov97_02232620));
    v0->unk_1C0 = 280;
}

UnkStruct_ov97_02232AC8 *ov97_02233538(void)
{
    return &ov97_02233410()->unk_254;
}

void ov97_02233548(void)
{
    UnkStruct_ov97_02232AC8 *v0 = ov97_02233538();
    v0->unk_18 = 0;
}

u32 ov97_02233554(void)
{
    return ov97_02233410()->unk_04;
}

u32 ov97_02233560(void)
{
    return (u32)ov97_02233410()->unk_40.unk_00.unk_00.unk_00_0;
}

u32 ov97_02233570(void)
{
    return (u32)ov97_02233410()->unk_40.unk_00.unk_00.unk_00_8;
}

u32 ov97_02233580(void)
{
    return (u32)ov97_02233410()->unk_40.unk_00.unk_04.unk_00_16;
}

u32 ov97_0223358C(void)
{
    return sizeof(UnkStruct_ov97_02233268);
}

UnkStruct_ov97_02233268 *ov97_02233590(void)
{
    return &ov97_02233410()->unk_40;
}

UnkStruct_ov97_022339EC *ov97_0223359C(void)
{
    return &ov97_02233410()->unk_78;
}

UnkStruct_ov97_022335A8 ov97_022335A8(u8 *param0)
{
    u32 v0;
    UnkStruct_ov97_022335A8 v1;

    v1.unk_00.val2 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1.unk_00.val1[v0] = param0[v0 + 2];
    }

    return v1;
}

UnkStruct_ov97_022335C8 ov97_022335C8(u8 *param0)
{
    u32 v0;
    UnkStruct_ov97_022335C8 v1;

    v1.unk_00.val2 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        v1.unk_00.val1[v0] = param0[v0];
    }

    return v1;
}

void ov97_022335EC(u32 param0, u32 *param1, u32 *param2)
{
    *param1 = param0 % 10000;
    *param2 = (param0 / 10000) % 10000;
}

u32 ov97_02233614(void)
{
    return sizeof(UnkStruct_ov97_02233674);
}

static u32 ov97_02233618()
{
    return ((u32)(OS_GetTick() + GX_GetVCount()) & 0xFFFFFFFE) + 1;
}

static u32 ov97_02233630(u32 param0, u32 param1, void *param2)
{
    u32 v0;
    u32 *v1 = (u32 *)param2;
    MATHRandContext16 v2;

    MATH_InitRand16(&v2, param0);

    for (v0 = 0; v0 < param1 / sizeof(u32); v0++) {
        (*v1) ^= ((MATH_Rand16(&v2, 0) << 16) | MATH_Rand16(&v2, 0));
        v1++;
    }

    return v2.x;
}

void ov97_02233674(void *param0, void *param1, u32 param2, int param3, u32 param4)
{
    UnkStruct_ov97_02233674 *v0 = (UnkStruct_ov97_02233674 *)param0;
    UnkStruct_ov97_02233268 *v1 = ov97_02233590();

    v0->unk_00.unk_00_0 = v1->unk_00.unk_00.unk_00_0;
    v0->unk_00.unk_00_8 = v1->unk_00.unk_00.unk_00_8;
    v0->unk_00.unk_00_12 = v1->unk_00.unk_00.unk_00_12;
    v0->unk_00.unk_00_16 = (u16)ov97_02233618();
    v0->unk_04.unk_00_0 = v1->unk_00.unk_04.unk_00_0;
    v0->unk_04.unk_00_8 = v1->unk_00.unk_04.unk_00_8;
    v0->unk_04.unk_00_12 = v1->unk_00.unk_04.unk_00_12;
    v0->unk_04.unk_00_16 = 0;
    v0->unk_08.unk_00_0 = (u8)param4;
    v0->unk_08.unk_00_8 = param3;
    v0->unk_08.unk_00_16 = SVC_GetCRC16(0, param1, param2);
    v0->unk_0C.unk_00_0 = (u8)ov97_02233614();
    v0->unk_0C.unk_00_8 = param2;

    if (param2) {
        MI_CpuCopy8(param1, ((u8 *)param0) + v0->unk_0C.unk_00_0, param2);
    }

    ov97_02233810(v0);

    if ((int)v1->unk_00.unk_00.unk_00_12 == 1) {
        ov97_02233630(v0->unk_00.unk_00_16, param2 + v0->unk_0C.unk_00_0 - sizeof(UnkStruct_ov97_02233674_sub1), &v0->unk_04);
    }
}

void ov97_022337A4(void *param0)
{
    UnkStruct_ov97_02233674 *v0 = (UnkStruct_ov97_02233674 *)param0;
    UnkStruct_ov97_02233268 *v1 = ov97_02233590();

    if ((int)v0->unk_00.unk_00_12 == 1) {
        u32 v2;

        v2 = ov97_02233630(v0->unk_00.unk_00_16, sizeof(UnkStruct_ov97_02233674_sub2) + sizeof(UnkStruct_ov97_02233674_sub3) + sizeof(UnkStruct_ov97_02233674_sub4), &v0->unk_04);
        ov97_02233630(v2, v0->unk_0C.unk_00_0 + v0->unk_0C.unk_00_8 - sizeof(UnkStruct_ov97_02233674), (void *)((u32)param0 + sizeof(UnkStruct_ov97_02233674)));
    }
}

BOOL ov97_022337D8(void *param0)
{
    UnkStruct_ov97_02233674 *v0 = (UnkStruct_ov97_02233674 *)param0;
    u16 v1 = SVC_GetCRC16(0, ((u8 *)param0) + v0->unk_0C.unk_00_0, v0->unk_0C.unk_00_8);

    if (v0->unk_08.unk_00_16 == v1) {
        return 1;
    } else {
        return 0;
    }
}
