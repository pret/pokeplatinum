#include <nitro.h>
#include <string.h>

#include "overlay117/struct_ov117_02261280.h"
#include "overlay117/struct_ov117_022621D4.h"
#include "overlay117/struct_ov117_02264E84.h"

#include "communication_system.h"
#include "overlay117/ov117_02260668.h"
#include "overlay117/ov117_02263AF0.h"
#include "overlay117/ov117_022666C0.h"

static void ov117_022668A8(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);
static void ov117_02266714(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);
static void ov117_02266760(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);
static void ov117_022667B8(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);
static void ov117_02266820(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);
static void ov117_02266860(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);
static void ov117_022668E4(UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1);

static void(*const Unk_ov117_02267014[])(UnkStruct_ov117_02261280 *, const UnkStruct_ov117_022621D4 *) = {
    NULL,
    ov117_02266714,
    ov117_02266760,
    ov117_022667B8,
    ov117_02266820,
    ov117_02266860,
    ov117_022668A8,
    ov117_022668E4,
};

#ifdef _NITRO
SDK_COMPILER_ASSERT(NELEMS(Unk_ov117_02267014) == 8);
#endif

BOOL ov117_022666C0 (UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022621D4 * param1)
{
    if (Unk_ov117_02267014[param1->unk_00] != NULL) {
        Unk_ov117_02267014[param1->unk_00](param0, param1);
        MI_CpuClear8(param1, sizeof(UnkStruct_ov117_022621D4));
        return 1;
    }

    return 0;
}

void ov117_022666E8 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_02264E84 * param1)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 1;
    v0.unk_04_val4 = *param1;

    ov117_02262130(param0, &v0);
}

static void ov117_02266714 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    if (param1->unk_04_val4.unk_00 == CommunicationSystem_GetCurNetId()) {
        return;
    }

    ov117_02263DC4(param0, &param1->unk_04_val4);
}

void ov117_02266730 (UnkStruct_ov117_02261280 * param0, int param1, u8 param2)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 2;
    v0.unk_04_val5.unk_00 = param1;
    v0.unk_04_val5.unk_02 = 5;
    v0.unk_04_val5.unk_03 = param2;

    ov117_02262130(param0, &v0);
}

static void ov117_02266760 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    param0->unk_2FD0++;

    ov117_02264808(param0);
    ov117_0226238C(param0, param1->unk_04_val5.unk_02, param1->unk_04_val5.unk_03);
}

void ov117_02266784 (UnkStruct_ov117_02261280 * param0, int param1, int param2, u8 param3)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 3;
    v0.unk_04_val6.unk_00 = param1;
    v0.unk_04_val6.unk_02 = param2;
    v0.unk_04_val6.unk_03 = 4;
    v0.unk_04_val6.unk_04 = param3;

    ov117_02262130(param0, &v0);
}

static void ov117_022667B8 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    param0->unk_2FC8 = param1->unk_04_val6.unk_00;
    ov117_02263AF0(param0->unk_2C, param0->unk_00->unk_30, param1->unk_04_val6.unk_02, &param0->unk_1428);
    param0->unk_2FCC = 1;

    ov117_0226238C(param0, param1->unk_04_val6.unk_03, param1->unk_04_val6.unk_04);
}

void ov117_022667F4 (UnkStruct_ov117_02261280 * param0, u8 param1)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 4;
    v0.unk_04_val1.unk_00 = 2;
    v0.unk_04_val1.unk_01 = param1;

    ov117_02262130(param0, &v0);
}

static void ov117_02266820 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    param0->unk_20 = 3;
    ov117_0226238C(param0, param1->unk_04_val2.unk_00, param1->unk_04_val2.unk_01);
}

void ov117_02266834 (UnkStruct_ov117_02261280 * param0, u8 param1)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 5;
    v0.unk_04_val3.unk_00 = 3;
    v0.unk_04_val3.unk_01 = param1;

    ov117_02262130(param0, &v0);
}

static void ov117_02266860 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    param0->unk_2FBC = 1;
    param0->unk_20 = 6;
    ov117_0226238C(param0, param1->unk_04_val3.unk_00, param1->unk_04_val3.unk_01);
}

void ov117_0226687C (UnkStruct_ov117_02261280 * param0, int param1, u8 param2)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 6;
    v0.unk_04_val1.unk_00 = param1;
    v0.unk_04_val1.unk_01 = param2;

    ov117_02262130(param0, &v0);
}

static void ov117_022668A8 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    ov117_0226238C(param0, param1->unk_04_val1.unk_00, param1->unk_04_val1.unk_01);
}

void ov117_022668B8 (UnkStruct_ov117_02261280 * param0, u8 param1)
{
    UnkStruct_ov117_022621D4 v0;

    MI_CpuClear8(&v0, sizeof(UnkStruct_ov117_022621D4));

    v0.unk_00 = 7;
    v0.unk_04_val1.unk_00 = 6;
    v0.unk_04_val1.unk_01 = param1;

    ov117_02262130(param0, &v0);
}

static void ov117_022668E4 (UnkStruct_ov117_02261280 * param0, const UnkStruct_ov117_022621D4 * param1)
{
    param0->unk_20 = 1;
    ov117_0226238C(param0, param1->unk_04_val2.unk_00, param1->unk_04_val2.unk_01);
}
