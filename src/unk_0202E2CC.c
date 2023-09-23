#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_defs/struct_0202440C.h"
#include "struct_defs/struct_0202E4D4.h"
#include "struct_defs/struct_0202E768.h"
#include "struct_defs/struct_0202E794.h"
#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/struct_0202E828.h"
#include "struct_defs/struct_0202E834.h"

#include "unk_0201378C.h"
#include "unk_020244AC.h"
#include "unk_0202E2CC.h"

static void sub_0202E3AC(TVBroadcast * param0);
static UnkStruct_0202E768 * sub_0202E4DC(TVBroadcast * param0, int param1);

int sub_0202E2CC (void)
{
    return sizeof(TVBroadcast);
}

void sub_0202E2D4 (TVBroadcast * param0)
{
    MI_CpuClearFast(param0, sizeof(TVBroadcast));
    sub_02025C84(27);
}

void sub_0202E2EC (TVBroadcast * param0)
{
    MI_CpuClearFast(param0->unk_0C, sizeof(UnkStruct_0202E768) * 4);
    MI_CpuClearFast(param0->unk_C4, sizeof(UnkStruct_0202E768) * 4);
    MI_CpuClearFast(param0->unk_17C, sizeof(UnkStruct_0202E768) * 4);

    sub_0202E35C(param0);
    sub_02025C84(27);
}

void sub_0202E324 (TVBroadcast * param0, int param1, int param2)
{
    int v0;

    if (param0->unk_04 > param1) {
        param0->unk_04 -= param1;
    } else {
        param0->unk_04 = 15 - param2 % 15;

        if (param0->unk_04 == 0) {
            param0->unk_04 = 15;
        }

        param0->unk_08 = 0;

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_00[v0] = 0;
        }
    }

    sub_02025C84(27);
}

void sub_0202E35C (TVBroadcast * param0)
{
    sub_0202E374(param0, 0);
    sub_0202E3AC(param0);
    sub_02025C84(27);
}

void sub_0202E374 (TVBroadcast * param0, BOOL param1)
{
    param0->unk_08 = param1;
    sub_02025C84(27);
}

BOOL sub_0202E380 (const TVBroadcast * param0)
{
    return param0->unk_08;
}

void sub_0202E384 (TVBroadcast * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0] == 0) {
            param0->unk_00[v0] = param1;
            sub_02025C84(27);
            return;
        }
    }

    GF_ASSERT(0);

    sub_02025C84(27);
}

static void sub_0202E3AC (TVBroadcast * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0] = 0;
    }

    sub_02025C84(27);
}

BOOL sub_0202E3C4 (const TVBroadcast * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0] == param1) {
            return 1;
        }
    }

    return 0;
}

int sub_0202E3DC (const TVBroadcast * param0)
{
    int v0, v1;

    for (v0 = 0, v1 = 0; v0 < 4; v0++) {
        if (param0->unk_00[v0] != 0) {
            v1++;
        }
    }

    return v1;
}

static void sub_0202E3F4 (UnkStruct_0202E4D4 * param0, int param1, const u8 * param2)
{
    RTCDate v0;

    sub_020138A4(&v0);

    param0->unk_04 = inline_0202D4B0(&v0);
    param0->unk_00 = param1;
    param0->unk_01 = 0;

    MI_CpuCopyFast(param2, param0->unk_08, 40);
    sub_02025C84(27);
}

BOOL sub_0202E43C (TVBroadcast * param0, int param1, int param2, const u8 * param3)
{
    int v0;
    UnkStruct_0202E768 * v1;

    v1 = sub_0202E4DC(param0, param1);

    for (v0 = 0; v0 < 4; v0++) {
        if (v1[v0].unk_00.unk_00 == param2) {
            if (v1[v0].unk_00.unk_01 >= 3) {
                sub_0202E3F4(&v1[v0].unk_00, param2, param3);
                return 1;
            }

            return 0;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v1[v0].unk_00.unk_00 == 0) {
            sub_0202E3F4(&v1[v0].unk_00, param2, param3);
            return 1;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v1[v0].unk_00.unk_01 >= 3) {
            sub_0202E3F4(&v1[v0].unk_00, param2, param3);
            return 1;
        }
    }

    sub_02025C84(27);

    return 0;
}

const u16 * sub_0202E4C8 (const UnkStruct_0202E794 * param0)
{
    return param0->unk_08;
}

int sub_0202E4CC (const UnkStruct_0202E794 * param0)
{
    return param0->unk_06;
}

int sub_0202E4D0 (const UnkStruct_0202E794 * param0)
{
    return param0->unk_05;
}

UnkStruct_0202E4D4 * sub_0202E4D4 (UnkStruct_0202E794 * param0)
{
    return &param0->unk_18;
}

UnkStruct_0202E4D4 * sub_0202E4D8 (UnkStruct_0202E768 * param0)
{
    return &param0->unk_00;
}

static UnkStruct_0202E768 * sub_0202E4DC (TVBroadcast * param0, int param1)
{
    UnkStruct_0202E768 * v0 = NULL;

    switch (param1) {
    case 1:
        v0 = param0->unk_17C;
        break;
    case 2:
        v0 = param0->unk_0C;
        break;
    case 3:
        v0 = param0->unk_C4;
        break;
    case 4:
    case 5:
        GF_ASSERT(0);
    }

    return v0;
}

static UnkStruct_0202E794 * sub_0202E518 (TVBroadcast * param0, int param1)
{
    UnkStruct_0202E794 * v0 = NULL;

    switch (param1) {
    case 2:
        v0 = param0->unk_234;
        break;
    case 3:
        v0 = param0->unk_684;
        break;
    case 1:
        v0 = param0->unk_8AC;
        break;
    case 4:
    case 5:
        GF_ASSERT(0);
    }

    return v0;
}

int sub_0202E55C (const UnkStruct_0202E4D4 * param0)
{
    return param0->unk_00;
}

void sub_0202E560 (UnkStruct_0202E4D4 * param0)
{
    if (param0->unk_01 < 3) {
        param0->unk_01++;
    }

    sub_02025C84(27);
}

void * sub_0202E574 (UnkStruct_0202E4D4 * param0)
{
    return param0->unk_08;
}

static int sub_0202E578 (const UnkStruct_0202E768 * param0, int param1, int param2, BOOL param3, u8 * param4)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00.unk_00 == param2) {
            int v2 = param0[v0].unk_00.unk_01;

            if (param3 && v2) {
                param4[v1] = v0 + 1;
                v1++;
            } else if (!param3 && (v2 == 0)) {
                param4[v1] = v0 + 1;
                v1++;
            }
        }
    }

    return v1;
}

static int sub_0202E5B8 (const UnkStruct_0202E794 * param0, int param1, int param2, BOOL param3, u8 * param4)
{
    int v0, v1;

    for (v1 = 0, v0 = 0; v0 < param1; v0++) {
        int v2 = param0[v0].unk_18.unk_01;

        if (param0[v0].unk_18.unk_00 == param2) {
            if (param3 && v2) {
                param4[v1] = sub_0202E7D0(v0 + 1);
                v1++;
            } else if (!param3 && (v2 == 0)) {
                param4[v1] = sub_0202E7D0(v0 + 1);
                v1++;
            }
        }
    }

    return v1;
}

int sub_0202E614 (const TVBroadcast * param0, int param1, int param2, BOOL param3, BOOL param4, u8 * param5)
{
    switch (param1) {
    case 2:
        if (param3) {
            return sub_0202E578(param0->unk_0C, 4, param2, param4, param5);
        } else {
            return sub_0202E5B8(param0->unk_234, 16, param2, param4, param5);
        }
    case 3:
        if (param3) {
            return sub_0202E578(param0->unk_C4, 4, param2, param4, param5);
        } else {
            return sub_0202E5B8(param0->unk_684, 8, param2, param4, param5);
        }
    case 1:
        if (param3) {
            return sub_0202E578(param0->unk_17C, 4, param2, param4, param5);
        } else {
            return sub_0202E5B8(param0->unk_8AC, 8, param2, param4, param5);
        }
    case 4:
        return 0;
    case 5:
        return 0;
    }

    return 0;
}

BOOL sub_0202E6B0 (TVBroadcast * param0, int param1, int param2)
{
    int v0;
    int v1;
    u8 v2[4];
    UnkStruct_0202E768 * v3;

    MI_CpuClear8(v2, 4);

    v0 = sub_0202E614(param0, param1, param2, 1, 0, v2);

    if (v0 != 0) {
        return 0;
    }

    v0 = sub_0202E614(param0, param1, param2, 1, 1, v2);

    if (v0 != 0) {
        for (v1 = 0; v1 < 4 & v2[v1] != 0; v1++) {
            v3 = sub_0202E768(param0, param1, v2[v1]);

            if (v3->unk_00.unk_01 >= 3) {
                return 1;
            }
        }

        return 0;
    }

    for (v1 = 1; v1 <= 4; v1++) {
        v3 = sub_0202E768(param0, param1, v1);

        if ((v3->unk_00.unk_00 == 0) || (v3->unk_00.unk_01 >= 3)) {
            return 1;
        }
    }

    return 0;
}

UnkStruct_0202E768 * sub_0202E768 (TVBroadcast * param0, int param1, int param2)
{
    UnkStruct_0202E768 * v0;

    GF_ASSERT(sub_0202E7C0(param2) == 1);

    param2 &= ~0x80;
    v0 = sub_0202E4DC(param0, param1);

    return &v0[param2 - 1];
}

UnkStruct_0202E794 * sub_0202E794 (TVBroadcast * param0, int param1, int param2)
{
    UnkStruct_0202E794 * v0;

    GF_ASSERT(sub_0202E7C0(param2) == 0);

    param2 &= ~0x80;
    v0 = sub_0202E518(param0, param1);

    return &v0[param2 - 1];
}

BOOL sub_0202E7C0 (int param0)
{
    if (param0 & 0x80) {
        return 0;
    } else {
        return 1;
    }
}

int sub_0202E7D0 (int param0)
{
    return param0 | 0x80;
}

UnkStruct_0202E7D8 * sub_0202E7D8 (TVBroadcast * param0)
{
    return &param0->unk_AD4;
}

UnkStruct_0202E7E4 * sub_0202E7E4 (TVBroadcast * param0)
{
    return &param0->unk_ADE;
}

UnkStruct_0202E7F0 * sub_0202E7F0 (TVBroadcast * param0)
{
    return &param0->unk_B02;
}

UnkStruct_0202E7FC * sub_0202E7FC (TVBroadcast * param0)
{
    return &param0->unk_B04;
}

UnkStruct_0202E808 * sub_0202E808 (TVBroadcast * param0)
{
    return &param0->unk_B08;
}

UnkStruct_0202E810 * sub_0202E810 (TVBroadcast * param0)
{
    return &param0->unk_B10;
}

UnkStruct_0202E81C * sub_0202E81C (TVBroadcast * param0)
{
    return &param0->unk_B2E;
}

UnkStruct_0202E828 * sub_0202E828 (TVBroadcast * param0)
{
    return &param0->unk_B44;
}

UnkStruct_0202E834 * sub_0202E834 (TVBroadcast * param0)
{
    return &param0->unk_B4C;
}
