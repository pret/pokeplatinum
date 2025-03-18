#include "overlay017/ov17_0224CFB8.h"

#include <nitro.h>
#include <string.h>

#include "overlay017/ov17_0223DAD0.h"
#include "overlay017/ov17_022492DC.h"
#include "overlay017/ov17_0224A0FC.h"
#include "overlay017/ov17_0224E930.h"
#include "overlay017/ov17_0224F18C.h"
#include "overlay017/struct_ov17_0223F03C.h"
#include "overlay017/struct_ov17_02243C28.h"
#include "overlay017/struct_ov17_02243C80.h"
#include "overlay017/struct_ov17_0224C0C0.h"
#include "overlay017/struct_ov17_0224D078.h"
#include "overlay017/struct_ov17_0224D240.h"
#include "overlay017/struct_ov17_0224D41C.h"
#include "overlay017/struct_ov17_0224D69C.h"
#include "overlay017/struct_ov17_0224D710.h"
#include "overlay017/struct_ov17_0224DC1C.h"
#include "overlay017/struct_ov17_0224DD90.h"
#include "overlay017/struct_ov17_0224DF54.h"
#include "overlay017/struct_ov17_0224DF54_sub1.h"
#include "overlay017/struct_ov17_0224DF54_sub2.h"
#include "overlay017/struct_ov17_0224DFF8.h"
#include "overlay017/struct_ov17_0224E1F4.h"
#include "overlay017/struct_ov17_0224E4A8.h"
#include "overlay017/struct_ov17_0224E584.h"
#include "overlay017/struct_ov17_0224E6C8.h"
#include "overlay017/struct_ov17_0224E86C.h"
#include "overlay017/struct_ov17_0224EDE0.h"
#include "overlay017/struct_ov17_0224F30C.h"
#include "overlay017/struct_ov17_0224F3D8.h"
#include "overlay017/struct_ov17_022539E4.h"
#include "overlay022/ov22_0225AF8C.h"

#include "bg_window.h"
#include "communication_system.h"
#include "heap.h"
#include "palette.h"
#include "pokemon.h"
#include "render_window.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_02094EDC.h"

static int ov17_0224CFF8(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224D00C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224D01C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, UnkStruct_ov17_0224F3D8 *param3, int param4);
static int ov17_0224D020(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224D034(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224D078(SysTask *param0, void *param1);
static int ov17_0224D1D4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224D1E8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224D240(SysTask *param0, void *param1);
static int ov17_0224DF88(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224DF9C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224DFF8(SysTask *param0, void *param1);
static void ov17_0224E1F4(SysTask *param0, void *param1);
static int ov17_0224D544(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224D558(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224D710(SysTask *param0, void *param1);
static void ov17_0224DF84(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, UnkStruct_ov17_0224F3D8 *param3, int param4);
static int ov17_0224D4EC(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224D500(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static int ov17_0224DC1C(UnkStruct_ov17_0224DC1C *param0, int *param1, int param2, int param3);
static UnkStruct_ov17_0224D69C *ov17_0224D668(UnkStruct_ov17_0224DF54 *param0, int param1);
static void ov17_0224D69C(UnkStruct_ov17_0224D69C *param0);
static void ov17_0224D6CC(SysTask *param0, void *param1);
static int ov17_0224E43C(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224E450(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224E4A8(SysTask *param0, void *param1);
static int ov17_0224E518(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224E52C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224E584(SysTask *param0, void *param1);
static int ov17_0224E648(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224E65C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224E6C8(SysTask *param0, void *param1);
static int ov17_0224E77C(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224E790(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static int ov17_0224E7B4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224E7C8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static int ov17_0224D3C4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224D3D8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224D41C(SysTask *param0, void *param1);
static void ov17_0224DF54(UnkStruct_ov17_0224DF54 *param0);
static int ov17_0224E800(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3);
static void ov17_0224E814(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3);
static void ov17_0224E86C(SysTask *param0, void *param1);

static const UnkStruct_ov17_022539E4 Unk_ov17_022549E4[] = {
    { ov17_0224CFF8, ov17_0224D00C, ov17_0224D01C },
    { ov17_0224D020, ov17_0224D034, NULL },
    { ov17_0224D1D4, ov17_0224D1E8, NULL },
    { ov17_0224D3C4, ov17_0224D3D8, NULL },
    { ov17_0224D4EC, ov17_0224D500, NULL },
    { ov17_0224D544, ov17_0224D558, ov17_0224DF84 },
    { ov17_0224DF88, ov17_0224DF9C, NULL },
    { ov17_0224E43C, ov17_0224E450, NULL },
    { ov17_0224E518, ov17_0224E52C, NULL },
    { ov17_0224E648, ov17_0224E65C, NULL },
    { ov17_0224E77C, ov17_0224E790, NULL },
    { ov17_0224E7B4, ov17_0224E7C8, NULL },
    { ov17_0224E800, ov17_0224E814, NULL }
};

__attribute__((aligned(4))) static const s8 Unk_ov17_022549C4[] = {
    0xF,
    0xB,
    0x7,
    0x3,
    0xFFFFFFFFFFFFFFFF
};

__attribute__((aligned(4))) static const u16 Unk_ov17_022549CC[] = {
    0x20,
    0x28,
    0x30,
    0x38,
    0xA0,
    0xA8,
    0xB0,
    0xB8,
    0x120,
    0x128,
    0x130,
    0x138
};

void ov17_0224CFB8(UnkStruct_ov17_0224DF54 *param0)
{
    UnkStruct_ov17_02243C28 v0;

    v0.unk_00 = Unk_ov17_022549E4;
    v0.unk_04 = NELEMS(Unk_ov17_022549E4);
    v0.unk_06 = param0->unk_00->unk_00.unk_113;
    v0.unk_08 = param0->unk_00->unk_00.unk_10C;
    v0.unk_07 = param0->unk_00->unk_155;

    ov17_0224F18C(&param0->unk_109C, &v0);
}

static int ov17_0224CFF8(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_0224D00C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    ov17_0224F26C(param0, param2, NULL, 0);
}

static void ov17_0224D01C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, UnkStruct_ov17_0224F3D8 *param3, int param4)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    return;
}

static int ov17_0224D020(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_0224D034(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224D078 *v1 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224D078));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_0224D078));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_0224D078, v1, 30000);
}

static void ov17_0224D078(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224D078 *v0 = param1;

    switch (v0->unk_10) {
    case 0:

        if (v0->unk_14 > 0) {
            v0->unk_14--;
            break;
        }

        if (v0->unk_13 > 0) {
            v0->unk_13--;
            break;
        }

        v0->unk_13 = 1;

        {
            u16 *v1, *v2;
            int v3, v4, v5, v6, v7;

            v1 = Bg_GetTilemapBuffer(v0->unk_00->unk_14.unk_60, 2);

            for (v4 = 0; v4 < 4; v4++) {
                if (Unk_ov17_022549C4[v0->unk_11] + v4 < 0) {
                    continue;
                }

                v2 = &v1[32 * (Unk_ov17_022549C4[v0->unk_11] + v4)];
                v7 = Unk_ov17_022549CC[v0->unk_12] + 32 * v4;
                v5 = 0;

                for (v6 = 0; v6 < 32 / 8; v6++) {
                    for (v3 = 0; v3 < 8; v3++) {
                        v2[v5 + v3] &= 0xfc00;
                        v2[v5 + v3] |= v7 + v3;
                    }

                    v5 += 8;
                }
            }

            {
                if ((v0->unk_11 > 0) && (v0->unk_12 == 0)) {
                    v2 = &v1[32 * Unk_ov17_022549C4[v0->unk_11 - 1]];

                    for (v6 = 0; v6 < 32; v6++) {
                        v2[v6] &= 0xfc00;
                    }
                }
            }

            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_14.unk_60, 2);
        }

        v0->unk_12++;

        if (v0->unk_12 >= NELEMS(Unk_ov17_022549CC)) {
            v0->unk_12 = 0;
            v0->unk_11++;
            v0->unk_14 = 0;

            if (v0->unk_11 >= NELEMS(Unk_ov17_022549C4)) {
                v0->unk_10++;
            }
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0224D1D4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_0224D1E8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224D240 *v1 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224D240));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_0224D240));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_0224D240, v1, 30000);
    v0->unk_1078 = 0;
    Sound_PlayBGM(1135);
}

static void ov17_0224D240(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224D240 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        if (v0->unk_14 > 0) {
            v0->unk_14--;
            break;
        }

        if (v0->unk_13 > 0) {
            v0->unk_13--;
            break;
        }

        v0->unk_13 = 1;

        {
            u16 *v1, *v2;
            int v3, v4, v5, v6, v7;
            int v8;

            v1 = Bg_GetTilemapBuffer(v0->unk_00->unk_14.unk_60, 2);

            for (v4 = 0; v4 < 4; v4++) {
                v8 = Unk_ov17_022549C4[NELEMS(Unk_ov17_022549C4) - 1 - v0->unk_11];

                if (v8 + v4 < 0) {
                    continue;
                }

                v2 = &v1[32 * (v8 + v4)];
                v7 = Unk_ov17_022549CC[NELEMS(Unk_ov17_022549CC) - 1 - v0->unk_12] + 32 * v4;
                v5 = 0;

                for (v6 = 0; v6 < 32 / 8; v6++) {
                    for (v3 = 0; v3 < 8; v3++) {
                        v2[v5 + v3] &= 0xfc00;
                        v2[v5 + v3] |= v7 + v3;
                    }

                    v5 += 8;
                }
            }

            {
                if ((v0->unk_11 > 0) && (v0->unk_12 == 0)) {
                    v8 = Unk_ov17_022549C4[NELEMS(Unk_ov17_022549C4) - 1 - v0->unk_11 + 1];
                    v8 += 4 - 1;
                    v2 = &v1[v8 * 32];

                    for (v6 = 0; v6 < 32; v6++) {
                        v2[v6] &= 0xfc00;
                        v2[v6] |= 0x200 + (v6 % 8);
                    }
                }
            }

            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_14.unk_60, 2);
        }

        v0->unk_12++;

        if (v0->unk_12 >= NELEMS(Unk_ov17_022549CC)) {
            v0->unk_12 = 0;
            v0->unk_11++;
            v0->unk_14 = 0;

            if (v0->unk_11 >= NELEMS(Unk_ov17_022549C4)) {
                v0->unk_10++;
            }
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0224D3C4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, NULL, 0);
    return v1;
}

static void ov17_0224D3D8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224D41C *v1 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224D41C));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_0224D41C));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;

    SysTask_Start(ov17_0224D41C, v1, 30000);
}

static void ov17_0224D41C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224D41C *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        Sound_StopBGM(1135, 30);
        v0->unk_10++;
        break;
    case 1:
        if (Sound_IsFadeActive() == FALSE) {
            v0->unk_10++;
        }
        break;
    case 2:
        G2_BlendNone();
        ov17_0224C84C();
        ov17_0224ABDC(&v0->unk_00->unk_14, 1);
        Sound_PlayEffect(SEQ_SE_DP_CON_019);
        v0->unk_10++;
        break;
    case 3:
        v0->unk_12++;

        if (v0->unk_12 > 30) {
            v0->unk_12 = 0;
            v0->unk_10++;
        }
        break;
    case 4:
        ov17_0224C6B0(v0->unk_00, v0->unk_00->unk_00->unk_00.unk_113, &v0->unk_11);
        v0->unk_10++;
        break;
    case 5:
        if (v0->unk_11 == 1) {
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0224D4EC(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0223F03C));
    return v1;
}

static void ov17_0224D500(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0223F03C *v1 = param3;
    int v2;

    v0->unk_1B24 = 1;

    for (v2 = 0; v2 < 4; v2++) {
        v0->unk_00->unk_156[v2] = v1->unk_00[v2];
    }

    if (sub_02094EDC(v0->unk_00) == 0) {
        ov17_0224F26C(param0, param2, NULL, 0);
    }
}

static int ov17_0224D544(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224D558(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224DF54_sub2 *v1 = param3;
    UnkStruct_ov17_0224D710 *v2;
    int v3, v4;

    v2 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224D710));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_0224D710));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_18 = *v1;
    v2->unk_50.unk_00 = v0;

    SysTask_Start(ov17_0224D710, v2, 30000);

    for (v3 = 0; v3 < 4; v3++) {
        if (v3 < v0->unk_00->unk_00.unk_117) {
            v2->unk_140[v3] = ov17_0224D668(v0, 0);
        } else {
            v2->unk_140[v3] = ov17_0224D668(v0, 1);
        }
    }

    {
        for (v4 = 0; v4 < 4; v4++) {
            if (v2->unk_18.unk_02[v4] == v2->unk_00->unk_00->unk_00.unk_113) {
                v2->unk_00->unk_14.unk_A2C = v4;
                break;
            }
        }
    }

    ov17_0224DF54(v0);

    for (v3 = v0->unk_00->unk_00.unk_117; v3 < 4; v3++) {
        {
            for (v4 = 0; v4 < 4; v4++) {
                if (v2->unk_18.unk_02[v4] == v3) {
                    break;
                }
            }
        }
        ov17_0224E930(&v2->unk_58[v3], v3, v4, v1->unk_14[v3], v0->unk_00->unk_00.unk_FC[v3]);
    }
}

static UnkStruct_ov17_0224D69C *ov17_0224D668(UnkStruct_ov17_0224DF54 *param0, int param1)
{
    UnkStruct_ov17_0224D69C *v0 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224D69C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224D69C));

    v0->unk_04 = param0;
    v0->unk_11 = param1;
    v0->unk_00 = SysTask_Start(ov17_0224D6CC, v0, (30000 + 100));

    return v0;
}

static void ov17_0224D69C(UnkStruct_ov17_0224D69C *param0)
{
    SysTask_Done(param0->unk_00);
    Heap_FreeToHeap(param0);
}

void ov17_0224D6B0(UnkStruct_ov17_0224D69C *param0, const UnkStruct_ov17_0224EDE0 *param1)
{
    param0->unk_08 = *param1;
    param0->unk_12 = 1;
}

static void ov17_0224D6CC(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224D69C *v0 = param1;

    if (v0->unk_12 == 0) {
        return;
    }

    if ((v0->unk_04->unk_00->unk_155 == 0) || (v0->unk_11 == 1)) {
        ov17_0224B20C(v0->unk_04, &v0->unk_08);
        v0->unk_12 = 0;
    } else {
        if (CommSys_SendDataFixedSize(25, &v0->unk_08) == 1) {
            v0->unk_12 = 0;
        }
    }
}

static void ov17_0224D710(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224D710 *v0 = param1;
    int v1, v2, v3;
    u32 v4;
    int v5;

    if (v0->unk_00->unk_00->unk_00.unk_113 == v0->unk_18.unk_00) {
        v2 = 0;
    } else {
        v2 = 1;
    }

    v4 = v0->unk_00->unk_107C - v0->unk_00->unk_1084;

    if (v4 < (v0->unk_18.unk_0C >> 1)) {
        v5 = 0;
    } else {
        v5 = 1;
    }

    switch (v0->unk_10) {
    case 0:
        ov17_0224B068(&v0->unk_00->unk_14, 0);
        ov17_0224BC4C(v0->unk_00);
        ov17_0224E990(v0->unk_00, &v0->unk_58[v0->unk_18.unk_00], v0->unk_18.unk_0C, v0->unk_18.unk_08);
        ov17_0224C54C(v0->unk_00->unk_14.unk_1FC, v0->unk_00->unk_A3C.unk_2F);
        ov17_0224C47C(&v0->unk_00->unk_14.unk_910, 1);
        ov17_0224C864(v0->unk_00, 0);
        ov17_0224C9A4(v0->unk_00);

        {
            UnkStruct_ov17_0224C0C0 v6;

            v6.unk_04 = v0->unk_18.unk_24.unk_05;

            if (v2 == 0) {
                ov17_0224C5A0(v0->unk_00, 4, &v6);
            } else {
                ov17_0224C5A0(v0->unk_00, 5, &v6);
            }
        }

        v0->unk_10++;
        break;
    case 1:
        if (ov17_0224C6A8(v0->unk_00, &(v0->unk_18.unk_24), v0->unk_18.unk_01) <= 0) {
            ov17_0224C640(v0->unk_00);

            v0->unk_00->unk_1084 = v0->unk_00->unk_107C + ov17_0224C6A8(v0->unk_00, &(v0->unk_18.unk_24), v0->unk_18.unk_01);

            if (v2 == 0) {
                ov17_0224C9F0(v0->unk_00, v2);
                v0->unk_11++;
            }

            ov17_0224CDC0(v0->unk_00, v0->unk_18.unk_00, 0);
            v0->unk_10++;
        } else {
            (void)0;
        }
        break;
    case 2: {
        ov17_0224A368(&v0->unk_00->unk_14, v0->unk_00->unk_107C - v0->unk_00->unk_1084, v0->unk_18.unk_0C, v0->unk_00->unk_A3C.unk_2F);
        ov17_0224C49C(v0->unk_00->unk_14.unk_1FC, v0->unk_00->unk_107C - v0->unk_00->unk_1084, v0->unk_18.unk_0C, v0->unk_00->unk_A3C.unk_2F);
        ov17_0224C434(&v0->unk_00->unk_14.unk_910, v0->unk_00->unk_107C - v0->unk_00->unk_1084, v0->unk_18.unk_0C, v0->unk_00->unk_A3C.unk_2F);
    }

        {
            if (v4 >= v0->unk_18.unk_0C) {
                v0->unk_16++;
                v0->unk_00->unk_1084 = v0->unk_00->unk_107C;
                v0->unk_11 = 0;
                v0->unk_12 = 0;

                ov17_0224DF54(v0->unk_00);

                {
                    int v7;

                    v0->unk_17 = 0;

                    for (v7 = v0->unk_00->unk_00->unk_00.unk_117; v7 < 4; v7++) {
                        ov17_0224E958(&v0->unk_58[v7]);
                    }
                }

                ov17_0224A580(&v0->unk_00->unk_14);
                ov17_0224BC4C(v0->unk_00);
                ov17_0224E990(v0->unk_00, &v0->unk_58[v0->unk_18.unk_00], v0->unk_18.unk_0C, v0->unk_18.unk_08);
                ov17_0224C864(v0->unk_00, 0);

                if (v0->unk_16 >= v0->unk_18.unk_24.unk_04) {
                    ov17_0224CE08(v0->unk_00);
                    ov17_0224B068(&v0->unk_00->unk_14, 2);
                    v0->unk_10++;
                    break;
                } else {
                    ov17_0224CDC0(v0->unk_00, v0->unk_18.unk_00, 0);

                    if (v2 == 0) {
                        if (v0->unk_11 == 0) {
                            ov17_0224C9F0(v0->unk_00, v2);
                            v0->unk_11++;
                        }
                    }
                }
                break;
            }
        }

        {
            v3 = v0->unk_00->unk_14.unk_A2C;
        }

        {
            UnkStruct_ov17_0224EDE0 v8;
            int v9;

            if (v4 < (v0->unk_18.unk_0C >> 1)) {
                v9 = 0;
            } else {
                v9 = 1;
            }

            if (v2 == 0) {
                if ((v9 == 0) && (v0->unk_17 < v0->unk_18.unk_24.unk_05) && (v4 < v0->unk_18.unk_0C / 2 - (v0->unk_18.unk_08 / 2 / 2) / 10000)) {
                    ov17_0224DC1C(&v0->unk_50, &v1, 0, 0);
                } else {
                    ov17_0224DC1C(&v0->unk_50, &v1, 1, 1);
                }

                if (v1 != 0xffffffff) {
                    ov17_0224DE54(v0->unk_00->unk_00->unk_00.unk_113, v1, v4, v0->unk_18.unk_08, &v0->unk_18.unk_24.unk_08, &v8, NULL, v3, v0->unk_17, v0->unk_18.unk_24.unk_05, v0->unk_00->unk_A3C.unk_2F);
                    ov17_0224D6B0(v0->unk_140[v0->unk_00->unk_00->unk_00.unk_113], &v8);
                    v0->unk_17++;
                }
            } else {
                if ((v9 == 1) && (v0->unk_17 < v0->unk_18.unk_24.unk_05) && (v4 < v0->unk_18.unk_0C - (v0->unk_18.unk_08 / 2 / 2) / 10000)) {
                    ov17_0224DC1C(&v0->unk_50, &v1, 0, 0);

                    if (v0->unk_11 == 0) {
                        ov17_0224C9F0(v0->unk_00, v2);
                        v0->unk_11++;
                    }
                } else {
                    ov17_0224DC1C(&v0->unk_50, &v1, 1, 1);
                }

                if (v1 != 0xffffffff) {
                    ov17_0224DE54(v0->unk_00->unk_00->unk_00.unk_113, v1, v4, v0->unk_18.unk_08, &v0->unk_18.unk_24.unk_08, &v8, v0->unk_00->unk_1AD4, v3, v0->unk_17, v0->unk_18.unk_24.unk_05, v0->unk_00->unk_A3C.unk_2F);
                    ov17_0224D6B0(v0->unk_140[v0->unk_00->unk_00->unk_00.unk_113], &v8);
                    v0->unk_17++;
                }
            }
        }

        {
            int v10;

            for (v10 = v0->unk_00->unk_00->unk_00.unk_117; v10 < 4; v10++) {
                ov17_0224ED8C(v5, v0->unk_00, &v0->unk_58[v10], v4, v0->unk_18.unk_0C, v0->unk_18.unk_08, &v0->unk_18.unk_24, v0->unk_140[v10]);
            }
        }

        if ((v5 == 1) && (v0->unk_12 == 0)) {
            ov17_0224CDC0(v0->unk_00, v0->unk_18.unk_00, 1);
            v0->unk_12++;
        }

        if (v5 == 1) {
            ov17_0224C8E8(v0->unk_00, v4);
        }

        break;
    case 3:
        if (ov17_0224DC1C(&v0->unk_50, &v1, 1, 0) == 1) {
            ov17_0224A580(&v0->unk_00->unk_14);
            ov17_0224A368(&v0->unk_00->unk_14, 0, v0->unk_18.unk_0C, v0->unk_00->unk_A3C.unk_2F);
            ov17_0224C540(v0->unk_00->unk_14.unk_1FC);
            ov17_0224C47C(&v0->unk_00->unk_14.unk_910, 0);
            ov17_0224B068(&v0->unk_00->unk_14, 2);
            ov17_0224C864(v0->unk_00, 0);
            ov17_0224C9D4(v0->unk_00);

            if (ov17_02249814(v0->unk_00->unk_1074) != 0) {
                ov17_0224A0E0(v0->unk_00->unk_1074, 0x0, 6);
            }

            v0->unk_10++;
        }
        break;
    default:
        if (1) {
            ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);

            {
                int v11;

                for (v11 = 0; v11 < 4; v11++) {
                    ov17_0224D69C(v0->unk_140[v11]);
                }
            }

            Heap_FreeToHeap(v0);
            SysTask_Done(param0);
            return;
        }
        break;
    }
}

static int ov17_0224DC1C(UnkStruct_ov17_0224DC1C *param0, int *param1, int param2, int param3)
{
    int v0 = 0;
    *param1 = 0xffffffff;

    if ((param2 == 0) && (param0->unk_05 > 0)) {
        param0->unk_05--;

        if (param0->unk_05 == 0) {
            ov17_0224A0E0(param0->unk_00->unk_1074, 0x0, 0);
        }
    }

    switch (param0->unk_04) {
    case 0:
        if ((param2 == 0) && (param3 == 0)) {
            param0->unk_05 = 0;

            ov17_0224A0E0(param0->unk_00->unk_1074, 0x0, 0);
            param0->unk_04++;
        } else {
            v0 = 1;
        }
        break;
    case 1:
        if ((param2 == 1) || (param0->unk_05 > 0)) {
            v0 = 1;
            break;
        }

        *param1 = ov17_02249760(param0->unk_00->unk_1074);

        if (*param1 != 0xffffffff) {
            param0->unk_05 = param0->unk_00->unk_A3C.unk_18 / 10000;
            param0->unk_05 -= 2;
            param0->unk_04++;
        } else {
            v0 = 1;
        }
        break;
    case 2:
        if (ov17_02249804(param0->unk_00->unk_1074) == 1) {
            if (param0->unk_05 > 0) {
                ov17_0224A0E0(param0->unk_00->unk_1074, 0x0, 6);
            }

            param0->unk_04 = 1;
        }
        break;
    }

    if ((param3 == 1) && (v0 == 1)) {
        if (ov17_02249814(param0->unk_00->unk_1074) != 0) {
            ov17_0224A0E0(param0->unk_00->unk_1074, 0x0, 6);
            param0->unk_04 = 0;
        }
    }

    return v0;
}

int ov17_0224DD28(int param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 1;
        break;
    case 1:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 3:
        v0 = 4;
        break;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }

    return v0;
}

int ov17_0224DD5C(int param0)
{
    int v0;

    switch (param0) {
    case 1:
        v0 = 0;
        break;
    case 2:
        v0 = 1;
        break;
    case 3:
        v0 = 2;
        break;
    case 4:
        v0 = 3;
        break;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }

    return v0;
}

static void ov17_0224DD90(int param0, const UnkStruct_ov17_0224DD90 *param1, u8 *param2, u8 *param3)
{
    if (param0 <= param1->unk_00) {
        *param2 = 0;
        *param3 = 0;
    } else if (param0 <= param1->unk_01) {
        *param2 = 0;
        *param3 = 1;
    } else if (param0 <= param1->unk_02) {
        *param2 = 1;
        *param3 = 2;
    } else if (param0 <= param1->unk_03) {
        *param2 = 1;
        *param3 = 3;
    } else {
        *param2 = 2;
        *param3 = 4;
    }
}

static void ov17_0224DDE4(u32 param0, u32 param1, u32 *param2, u32 *param3)
{
    u32 v0, v1, v2, v3, v4;
    u32 v5, v6;
    u32 v7, v8;
    u32 v9;
    s64 v10;

    v1 = param0 * 10000;
    v9 = param1 / 2;
    v2 = 0;
    v7 = 0;

    for (v4 = 0; v4 < v1; v4 += v9) {
        v2 = v4;
        v7++;
    }

    v3 = v4;
    v2 = (v2 + 10000 / 2) / 10000;
    v3 = (v3 + 10000 / 2) / 10000;
    v1 /= 10000;
    v10 = v1;
    v5 = MATH_IAbs(v10 - v2);
    v6 = MATH_IAbs(v10 - v3);

    if (v5 <= v6) {
        v8 = v5;
        v7--;
    } else {
        v8 = v6;
    }

    *param2 = v8;
    *param3 = v7;
}

void ov17_0224DE54(int param0, int param1, u32 param2, u32 param3, const UnkStruct_ov17_0224DD90 *param4, UnkStruct_ov17_0224EDE0 *param5, const UnkStruct_ov17_0224EDE0 *param6, int param7, int param8, int param9, int param10)
{
    int v0, v1;
    u8 v2, v3;
    u32 v4, v5, v6;
    u32 v7, v8 = 0;

    v0 = ov17_0224DD28(param1);

    ov17_0224DDE4(param2, param3, &v4, &v5);

    if (param6 != NULL) {
        v6 = v5 - ov17_0223F0BC(param10, 4) / 2;

        for (v7 = 0; v7 < 8; v7++) {
            if ((param6[v7].unk_08_2 == 1) && (param6[v7].unk_06 == v6)) {
                break;
            }
        }

        if (v7 == 8) {
            v4 = 0xff;
        }
    }

    ov17_0224DD90(v4, param4, &v2, &v3);

    if ((param6 != NULL) && (v7 != 8)) {
        switch (v2) {
        case 0:
        case 1:
            if (param6[v7].unk_03 != v0) {
                v4 = 0xff;
                v3 = 4;
                v2 = 2;
                v8 = 1;
            }
            break;
        }
    }

    param5->unk_02 = param0;
    param5->unk_00 = param2;
    param5->unk_03 = v0;
    param5->unk_04 = v2;
    param5->unk_05 = v3;
    param5->unk_06 = v5;
    param5->unk_07 = param7;
    param5->unk_08_0 = (param8 >= param9 - 1) ? 1 : 0;
    param5->unk_08_1 = v8;
    param5->unk_08_2 = 1;
}

static void ov17_0224DF54(UnkStruct_ov17_0224DF54 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_14.unk_A1D[v0] = 0;
        param0->unk_14.unk_A21[v0] = 0;
    }

    param0->unk_14.unk_A25 = 0;
    param0->unk_14.unk_A26 = 0;
    param0->unk_14.unk_A27 = 0;
}

static void ov17_0224DF84(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, UnkStruct_ov17_0224F3D8 *param3, int param4)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    return;
}

static int ov17_0224DF88(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224DF9C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224DF54_sub2 *v1 = param3;
    UnkStruct_ov17_0224DFF8 *v2 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224DFF8));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_0224DFF8));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_C8 = *v1;

    SysTask_Start(ov17_0224DFF8, v2, 30000);
}

static void ov17_0224DFF8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224DFF8 *v0 = param1;
    int v1, v2;

    switch (v0->unk_10) {
    case 0:
        ov17_0224CDB4(v0->unk_00, 0);
        PaletteData_StartFade(v0->unk_00->unk_14.unk_90, 0x1, (0x1fff ^ ((1 << 4) | (1 << 3) | (1 << 2))), -2, 0, 6, 0x0);

        for (v2 = 0; v2 < 4; v2++) {
            ov17_0224CEE4(v0->unk_00, v2, 0x7fff, 0x254a, 16, 4, &v0->unk_11[v2]);
        }

        v0->unk_10++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(v0->unk_00->unk_14.unk_90) == 0) {
            for (v2 = 0; v2 < 4; v2++) {
                if (v0->unk_11[v2] == 0) {
                    break;
                }
            }

            if (v2 == 4) {
                v0->unk_10++;
            }
        }
        break;
    case 2:
        for (v2 = 0; v2 < 4; v2++) {
            v1 = v0->unk_C8.unk_02[v2];
            v0->unk_18[v1].unk_00 = v0->unk_00->unk_14.unk_00->unk_00[v1];
            v0->unk_18[v1].unk_04 = v0->unk_00->unk_14.unk_48[v1];
            v0->unk_18[v1].unk_08 = &v0->unk_00->unk_14.unk_04[v1];
            v0->unk_18[v1].unk_0E = (v0->unk_00->unk_A3C.unk_24 / 10000) * 40 / 100;
            v0->unk_18[v1].unk_0C = v2;

            if (v2 == 0) {
                v0->unk_18[v1].unk_0D = 3;
            } else {
                v0->unk_18[v1].unk_0D = v2 - 1;
            }

            SysTask_Start(ov17_0224E1F4, &v0->unk_18[v1], ((30000 + 10000) + 100));
        }

        {
            UnkStruct_ov17_0224C0C0 v3;

            v3.unk_04 = v0->unk_C8.unk_24.unk_05;

            if (v0->unk_C8.unk_02[1] == v0->unk_00->unk_00->unk_00.unk_113) {
                ov17_0224C5A0(v0->unk_00, 4, &v3);
            } else {
                ov17_0224C5A0(v0->unk_00, 5, &v3);
            }
        }

        Sound_PlayEffect(SEQ_SE_DP_CON_030);
        v0->unk_10++;
        break;
    case 3:
        for (v2 = 0; v2 < 4; v2++) {
            if (v0->unk_18[v2].unk_2B == 0) {
                break;
            }
        }

        if (v2 == 4) {
            v0->unk_10++;
        }
        break;
    case 4:
        PaletteData_StartFade(v0->unk_00->unk_14.unk_90, 0x1, (0x1fff ^ ((1 << 4) | (1 << 3) | (1 << 2))), -2, 6, 0, 0x0);
        v0->unk_10++;
        break;
    case 5:
        if (PaletteData_GetSelectedBuffersMask(v0->unk_00->unk_14.unk_90) == 0) {
            ov17_0224CDB4(v0->unk_00, 1);
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static void ov17_0224E1F4(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224E1F4 *v0 = param1;
    int v1, v2, v3, v4, v5, v6;
    int v7;

    switch (v0->unk_2A) {
    case 0:
        v0->unk_10 = v0->unk_08->unk_04 * 0x100;
        v0->unk_14 = v0->unk_08->unk_08 * 0x100;
        v0->unk_18 = v0->unk_08->unk_0C * 0x100;

        {
            v1 = ov17_0224A0FC(v0->unk_0C) * 0x100;
            v2 = ov17_0224A10C(v0->unk_0C) * 0x100;
            v3 = ov17_0224A120(v0->unk_0C) * 0x100;

            if ((v0->unk_0D == 0) || (v0->unk_0D == 4 - 1)) {
                if (v0->unk_0D == 0) {
                    v4 = (0 - 80) * 0x100;
                } else {
                    v4 = (256 + 100) * 0x100;
                }

                v5 = v2;
                v6 = v3;
                v0->unk_1C = (v4 - v1) / (v0->unk_0E / 2);
                v0->unk_20 = (v5 - v2) / (v0->unk_0E / 2);
                v0->unk_24 = (v6 - v3) / (v0->unk_0E / 2);
            } else {
                v4 = ov17_0224A0FC(v0->unk_0D) * 0x100;
                v5 = ov17_0224A10C(v0->unk_0D) * 0x100;
                v6 = ov17_0224A120(v0->unk_0D) * 0x100;
                v0->unk_1C = (v4 - v1) / v0->unk_0E;
                v0->unk_20 = (v5 - v2) / v0->unk_0E;
                v0->unk_24 = (v6 - v3) / v0->unk_0E;
            }
        }

        v0->unk_2A++;
        break;
    case 1:
        v0->unk_10 += v0->unk_1C;
        v0->unk_14 += v0->unk_20;
        v0->unk_18 += v0->unk_24;
        v0->unk_28++;

        if ((v0->unk_0D == 0) || (v0->unk_0D == 4 - 1)) {
            if (v0->unk_28 == (v0->unk_0E / 2)) {
                int v8;

                if (v0->unk_0D == 0) {
                    v0->unk_10 = (0 - 100) * 0x100;
                    ov22_0225B07C(v0->unk_08->unk_00, 1);
                    ov22_0225B1AC(v0->unk_08->unk_00, 100);
                } else {
                    v0->unk_10 = (ov17_0224A0FC(v0->unk_0D) + 80) * 0x100;
                    ov22_0225B07C(v0->unk_08->unk_00, 0);
                    ov22_0225B1AC(v0->unk_08->unk_00, -100);
                }

                v7 = Pokemon_DPSpriteYOffset(v0->unk_00, 2);

                v0->unk_14 = (ov17_0224A10C(v0->unk_0D) + v7) * 0x100;
                v0->unk_18 = ov17_0224A120(v0->unk_0D) * 0x100;

                v4 = ov17_0224A0FC(v0->unk_0D) * 0x100;
                v5 = v0->unk_14;
                v6 = v0->unk_18;
                v8 = v0->unk_0E - v0->unk_28 - 1;

                v0->unk_1C = (v4 - v0->unk_10) / v8;
                v0->unk_20 = (v5 - v0->unk_14) / v8;
                v0->unk_24 = (v6 - v0->unk_18) / v8;
            }
        } else if (v0->unk_10 < ov17_0224A0FC(v0->unk_0D) * 0x100) {
            v0->unk_10 = ov17_0224A0FC(v0->unk_0D) * 0x100;
        }

        if (v0->unk_28 >= v0->unk_0E) {
            v7 = Pokemon_DPSpriteYOffset(v0->unk_00, 2);
            v0->unk_10 = ov17_0224A0FC(v0->unk_0D) * 0x100;
            v0->unk_14 = (ov17_0224A10C(v0->unk_0D) + v7) * 0x100;
            v0->unk_18 = ov17_0224A120(v0->unk_0D) * 0x100;
            v0->unk_2A++;
        }

        v0->unk_08->unk_04 = v0->unk_10 / 0x100;
        v0->unk_08->unk_08 = v0->unk_14 / 0x100;
        v0->unk_08->unk_0C = v0->unk_18 / 0x100;

        ov22_0225B100(v0->unk_08->unk_00, v0->unk_08->unk_04, v0->unk_08->unk_08);
        ov17_0224B09C(v0->unk_04, v0->unk_08);
        break;
    default:
        v0->unk_2B = 1;
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0224E43C(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224E450(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224E4A8 *v1;
    UnkStruct_ov17_0224DF54_sub2 *v2 = param3;

    v1 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224E4A8));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_0224E4A8));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;
    v1->unk_10 = *v2;

    SysTask_Start(ov17_0224E4A8, v1, 30000);
}

static void ov17_0224E4A8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224E4A8 *v0 = param1;
    int v1;

    switch (v0->unk_45) {
    case 0:
        for (v1 = 0; v1 < 4; v1++) {
            ov17_0224BC68(v0->unk_00, v0->unk_10.unk_02[v1], v1);
        }

        ov17_02249640(v0->unk_00->unk_1074, 1, 1, NULL);
        ov17_0224A0E0(v0->unk_00->unk_1074, 0x0, 6);

        v0->unk_45++;
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);

        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_0224E518(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224E52C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224E584 *v1;
    UnkStruct_ov17_0224DF54_sub2 *v2 = param3;

    v1 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224E584));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_0224E584));

    v1->unk_00 = v0;
    v1->unk_04 = *param2;
    v1->unk_0C = param0;
    v1->unk_10 = *v2;

    SysTask_Start(ov17_0224E584, v1, 30000);
}

static void ov17_0224E584(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224E584 *v0 = param1;
    int v1;

    switch (v0->unk_45) {
    case 0:
        if (ov17_0224B5C8(v0->unk_00) == 0) {
            break;
        }

        for (v1 = 0; v1 < 4; v1++) {
            ov17_0224BD28(v0->unk_00, v1, 2);
            ov17_0224BD28(v0->unk_00, v1, 5);
        }

        v0->unk_45++;
        break;
    case 1: {
        int v2 = 0, v3 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            if (ov17_0224BDF0(v0->unk_00, v1) == 1) {
                v2++;
            }

            if (ov17_0224BE24(v0->unk_00, v1) == 1) {
                v3++;
            }
        }

        if (v2 >= 4) {
            ov17_0224BD00(v0->unk_00);
            v0->unk_45++;
        }
    } break;
    default:
        ov17_02249640(v0->unk_00->unk_1074, 0, 1, NULL);
        ov17_0224A0E0(v0->unk_00->unk_1074, 0x0, 0);
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);

        return;
    }
}

static int ov17_0224E648(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224E65C(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224DF54_sub2 *v1 = param3;
    UnkStruct_ov17_0224E6C8 *v2 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224E6C8));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_0224E6C8));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_11 = v1->unk_00;
    v2->unk_14 = v1->unk_30;
    v2->unk_1A = v1->unk_36;
    v2->unk_1C = v1->unk_38;
    v2->unk_1B = v1->unk_37;

    SysTask_Start(ov17_0224E6C8, v2, 30000);
}

static void ov17_0224E6C8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224E6C8 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        if (v0->unk_1A != 0) {
            Window_DrawMessageBoxWithScrollCursor(&v0->unk_00->unk_14.unk_64[0], 1, 1, 14);
            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_14.unk_60, 1);

            ov17_0224C2CC(v0->unk_00, v0->unk_1A, &v0->unk_14);
            v0->unk_10++;
        } else {
            v0->unk_10 = 100;
        }
        break;
    case 1:
        if (ov17_0224C300(v0->unk_00) == 0) {
            v0->unk_10++;
        }
        break;
    case 2:
        v0->unk_12++;

        if (v0->unk_1C == 1) {
            v0->unk_10++;
        } else if (v0->unk_12 >= v0->unk_1B) {
            Window_EraseMessageBox(&v0->unk_00->unk_14.unk_64[0], 1);
            Bg_ScheduleTilemapTransfer(v0->unk_00->unk_14.unk_60, 1);
            v0->unk_10++;
        }
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);

        return;
    }
}

static int ov17_0224E77C(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub1));
    return v1;
}

static void ov17_0224E790(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;

    v0->unk_A3C = *((UnkStruct_ov17_0224DF54_sub1 *)param3);
    ov17_0224F26C(param0, param2, NULL, 0);
}

static int ov17_0224E7B4(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224E7C8(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224DF54_sub2 *v1 = param3;

    Sound_StopAll();
    Sound_PlayBGM(v1->unk_24.unk_00);

    v0->unk_1078 = 1;
    v0->unk_1084 = v0->unk_107C;

    ov17_0224F26C(param0, param2, NULL, 0);
}

static int ov17_0224E800(UnkStruct_ov17_0224F30C *param0, void *param1, int param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    int v1 = ov17_0224F1F8(param0, 0xff, param2, param3, sizeof(UnkStruct_ov17_0224DF54_sub2));
    return v1;
}

static void ov17_0224E814(UnkStruct_ov17_0224F30C *param0, void *param1, const UnkStruct_ov17_02243C80 *param2, void *param3)
{
    UnkStruct_ov17_0224DF54 *v0 = param1;
    UnkStruct_ov17_0224DF54_sub2 *v1 = param3;
    UnkStruct_ov17_0224E86C *v2 = Heap_AllocFromHeap(HEAP_ID_23, sizeof(UnkStruct_ov17_0224E86C));
    MI_CpuClear8(v2, sizeof(UnkStruct_ov17_0224E86C));

    v2->unk_00 = v0;
    v2->unk_04 = *param2;
    v2->unk_0C = param0;
    v2->unk_10 = *v1;

    SysTask_Start(ov17_0224E86C, v2, 30000);
}

static void ov17_0224E86C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224E86C *v0 = param1;

    switch (v0->unk_4C) {
    case 0:
        v0->unk_00->unk_1078 = 0;
        v0->unk_4C++;
        break;
    case 1:
        if (Sound_IsSequencePlaying(v0->unk_10.unk_24.unk_00) == FALSE) {
            v0->unk_4C++;
        }
        break;
    case 2:
        ov17_0224CE28(v0->unk_00);
        v0->unk_4C++;
        break;
    case 3:
        v0->unk_48++;

        if (v0->unk_48 > 60) {
            v0->unk_48 = 0;
            v0->unk_4C++;
        }
        break;
    case 4:
        Sound_PlayBGM(1135);
        Sound_PlayEffect(SEQ_SE_DP_CON_007);
        v0->unk_4C++;
        break;
    default:
        ov17_0224F26C(v0->unk_0C, &v0->unk_04, NULL, 0);
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        return;
    }
}
