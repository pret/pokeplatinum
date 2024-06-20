#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "sys_task_manager.h"

#include "touch_screen.h"
#include "overlay116/struct_ov116_02260490.h"
#include "overlay116/struct_ov116_02262A8C.h"
#include "overlay116/struct_ov116_02262CB8.h"
#include "overlay116/struct_ov116_02262D08.h"
#include "overlay116/struct_ov116_02262DC0.h"
#include "overlay116/struct_ov116_022649E4.h"
#include "overlay116/struct_ov116_0226501C.h"

#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "sys_task.h"
#include "unk_0200F174.h"
#include "easy3d_object.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "communication_system.h"
#include "overlay116/ov116_02261870.h"
#include "overlay116/ov116_02262A8C.h"
#include "overlay116/ov116_0226432C.h"
#include "overlay116/ov116_02266FEC.h"

static const s16 Unk_ov116_02267BFC[] = {
	-2,
	-2,
	-1,
	-1,
	-1,
	-1,
	0xEE,
	0x2,
	0x2,
	0x2,
	0x2,
	0x4,
	0x4,
	0x4,
	0x4,
	0x6,
	0x6,
	0x6,
	0x6,
	0xFF
};

static const s16 Unk_ov116_02267C24[] = {
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0xEE,
	0x0,
	0x0,
	0x4,
	0x4,
	0x4,
	0x4,
	0x4,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0xFF
};

static const s16 Unk_ov116_02267BB4[] = {
	-2,
	-2,
	-2,
	-2,
	-1,
	-1,
	0x3,
	0x3,
	0x4,
	0x4,
	0x6,
	0x6,
	0x7,
	0x7,
	0x8,
	0x8
};

static const s16 Unk_ov116_02267C4C[] = {
	-3,
	-3,
	-2,
	-2,
	-1,
	-1,
	0xEE,
	0x1,
	0x1,
	0x2,
	0x2,
	0x3,
	0x3,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0x0,
	0xFF
};

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov116_02267C88;

static void ov116_02262CB8(UnkStruct_ov116_02262A8C * param0, int param1);
static void ov116_02262D08(UnkStruct_ov116_02262A8C * param0, int param1);
static void ov116_02262D64(UnkStruct_ov116_02262A8C * param0, int param1);
static void ov116_02262DC0(UnkStruct_ov116_02262A8C * param0);
static void ov116_0226323C(SysTask * param0, void * param1);
static void ov116_02263434(SysTask * param0, void * param1);
static void ov116_0226377C(UnkStruct_ov116_02262A8C * param0);
static void ov116_022637B4(UnkStruct_ov116_02262A8C * param0);
static BOOL ov116_022637F0(UnkStruct_ov116_02262A8C * param0);
static BOOL ov116_0226386C(UnkStruct_ov116_02262A8C * param0, int param1, int * param2);
static void ov116_022638C8(UnkStruct_ov116_02262A8C * param0);
static void ov116_022639BC(UnkStruct_ov116_02262A8C * param0);
static inline u32 inline_ov116_02263E20(void);
static inline s8  inline_ov116_02263E20_1(void);
static inline s8  inline_ov116_02263E20_2(s16 val);
void include_unk_ov116_02267BB4(void);
void include_unk_ov116_02267BFC(void);
void include_unk_ov116_02267C24(void);
void include_unk_ov116_02267C4C(void);

static const int Unk_ov116_02267BD4[][2] = {
    {0x1F, 0x20},
    {0x21, 0x22},
    {0x23, 0x24},
    {0x25, 0x26},
    {0x25, 0x26}
};

static const int Unk_ov116_02267B9C[][2] = {
    {0x27, 0x28},
    {0x29, 0x2A},
    {0x29, 0x2A}
};

void include_unk_ov116_02267BB4 (void)
{
    Unk_ov116_02267BB4[0];
}

void include_unk_ov116_02267BFC (void)
{
    Unk_ov116_02267BFC[0];
}

void include_unk_ov116_02267C24 (void)
{
    Unk_ov116_02267C24[0];
}

void include_unk_ov116_02267C4C (void)
{
    Unk_ov116_02267C4C[0];
}

UnkStruct_ov116_02262A8C * ov116_02262A8C (int param0, u32 param1, UnkStruct_ov116_022649E4 * param2)
{
    UnkStruct_ov116_02262A8C * v0 = Heap_AllocFromHeap(106, sizeof(UnkStruct_ov116_02262A8C));

    memset(v0, 0, sizeof(UnkStruct_ov116_02262A8C));

    v0->unk_04 = param0;
    v0->unk_00 = param1;
    v0->unk_08 = 0;
    v0->unk_0C = 0;
    v0->unk_14 = param2;
    v0->unk_2874 = 0;

    {
        v0->unk_20C4.unk_00 = v0->unk_279C.unk_0C;
        v0->unk_20C4.unk_04 = &v0->unk_279C.unk_0C;
    }

    v0->unk_279C.unk_B4 = 0;
    ov116_02262AE4(v0);

    return v0;
}

void ov116_02262AE4 (UnkStruct_ov116_02262A8C * param0)
{
    int v0;

    param0->unk_1FB0.x = 0;
    param0->unk_1FB0.y = (FX32_CONST(100));
    param0->unk_1FB0.z = 0;
    param0->unk_308[0].unk_1FC = 0.0f;
    param0->unk_308[0].unk_200 = 0.0f;
    param0->unk_FC.unk_1FC = 0.0f;
    param0->unk_FC.unk_200 = 0.0f;
    param0->unk_308[0].unk_1F8 = 0;
    param0->unk_FC.unk_1F8 = 0;

    ov116_02266FEC(&param0->unk_FC.unk_190);
    ov116_02266FEC(&param0->unk_FC.unk_1A0);
    ov116_02266FEC(&param0->unk_308[0].unk_190);
    ov116_02266FEC(&param0->unk_308[0].unk_1A0);
    ov116_02266FEC(&param0->unk_92C.unk_190);
    ov116_02266FEC(&param0->unk_92C.unk_1A0);

    for (v0 = 0; v0 < 8; v0++) {
        ov116_02266FEC(&param0->unk_B38[v0].unk_190);
        ov116_02266FEC(&param0->unk_B38[v0].unk_1A0);
        ov116_0226432C(&param0->unk_B38[v0], 0, 0, +5, +5, (0.80), 0);
        ov116_0226432C(&param0->unk_B38[v0], 0, 0, -5, -5, (0.80), 0);
    }

    ov116_0226432C(&param0->unk_FC, 0, 0, +5, +5, (2.35 * 0.80), 0);
    ov116_0226432C(&param0->unk_FC, 0, 0, -5, -5, (2.35 * 0.80), 0);
    ov116_0226432C(&param0->unk_308[0], 0, 0, +5, +5, (0.80), 0);
    ov116_0226432C(&param0->unk_308[0], 0, 0, -5, -5, (0.80), 0);
    ov116_0226432C(&param0->unk_92C, 0, 0, +5, +5, (2.35 * 0.80), 0);
    ov116_0226432C(&param0->unk_92C, 0, 0, -5, -5, (0.80), 0);
}

void ov116_02262C64 (UnkStruct_ov116_02262A8C * param0)
{
    Heap_FreeToHeap(param0);
}

BOOL ov116_02262C6C (UnkStruct_ov116_02262A8C * param0, int * param1)
{
    int v0;
    int v1;

    v0 = param0->unk_1FB0.y >> FX32_SHIFT;
    v1 = (FX32_CONST(45)) >> FX32_SHIFT;

    if (v0 <= v1) {
        return 1;
    }

    return 0;
}

void ov116_02262C84 (UnkStruct_ov116_02262A8C * param0)
{
    int v0;
    int v1;
    int v2;

    v0 = param0->unk_1FB0.y >> FX32_SHIFT;
    v1 = (FX32_CONST(75)) >> FX32_SHIFT;
    v2 = (FX32_CONST(61)) >> FX32_SHIFT;

    if ((v0 < v1) && (v0 > v2)) {
        ov116_02261C48(param0, 1);
        return;
    }

    v1 = (FX32_CONST(60)) >> FX32_SHIFT;
    v2 = (FX32_CONST(46)) >> FX32_SHIFT;

    if ((v0 < v1) && (v0 > v2)) {
        ov116_02261C48(param0, 2);
        return;
    }

    ov116_02261C48(param0, 0);
}

static void ov116_02262CB8 (UnkStruct_ov116_02262A8C * param0, int param1)
{
    UnkStruct_ov116_02262CB8 * v0 = Heap_AllocFromHeap(106, sizeof(UnkStruct_ov116_02262CB8));

    memset(v0, 0, sizeof(UnkStruct_ov116_02262CB8));

    v0->unk_0C = param0->unk_1C[param0->unk_DC[param1]];
    v0->unk_10 = param0->unk_20[param0->unk_DC[param1]];
    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_2C = param0->unk_14;

    SysTask_Start(ov116_02263158, v0, 4096);
}

static void ov116_02262D08 (UnkStruct_ov116_02262A8C * param0, int param1)
{
    UnkStruct_ov116_02262D08 * v0;

    v0 = &param0->unk_268C[param1];

    if (v0->unk_30 == 1) {
        return;
    }

    v0->unk_40 = param0->unk_2870;
    v0->unk_30 = 1;
    v0->unk_2C = &param0->unk_279C.unk_28[param1];
    v0->unk_28 = *v0->unk_2C;
    v0->unk_0C = param0->unk_24[param0->unk_DC[param1]];
    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_3C = param0->unk_14;

    SysTask_Start(ov116_0226323C, v0, 4096);
}

static void ov116_02262D64 (UnkStruct_ov116_02262A8C * param0, int param1)
{
    UnkStruct_ov116_02262D08 * v0;

    v0 = &param0->unk_268C[param1];

    if (v0->unk_30 == 1) {
        return;
    }

    v0->unk_40 = param0->unk_2870;
    v0->unk_30 = 1;
    v0->unk_2C = &param0->unk_279C.unk_0C;
    v0->unk_28 = *v0->unk_2C;
    v0->unk_34 = &param0->unk_1B98;
    v0->unk_38 = &param0->unk_1DA4;
    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_3C = param0->unk_14;

    SysTask_Start(ov116_02263434, v0, 4096);
}

static void ov116_02262DC0 (UnkStruct_ov116_02262A8C * param0)
{
    UnkStruct_ov116_02262DC0 * v0 = Heap_AllocFromHeap(106, sizeof(UnkStruct_ov116_02262DC0));

    memset(v0, 0, sizeof(UnkStruct_ov116_02262DC0));

    v0->unk_0C = &param0->unk_F8;
    v0->unk_10 = &param0->unk_308[0];
    v0->unk_14 = &param0->unk_FC;
    v0->unk_20 = param0->unk_1FB0;
    v0->unk_74 = param0->unk_2870;
    v0->unk_78 = param0->unk_14;

    ov116_02261C48(param0, 0);

    Easy3DAnim_SetFrame(&param0->unk_308[0].unk_88[0], 0);
    Easy3DAnim_SetFrame(&param0->unk_308[1].unk_88[0], 0);
    Easy3DAnim_SetFrame(&param0->unk_308[2].unk_88[0], 0);
    SysTask_Start(ov116_02262E50, v0, 4096);
}

void ov116_02262E50 (SysTask * param0, void * param1)
{
    UnkStruct_ov116_02262DC0 * v0 = param1;
    s16 v1;
    s16 v2;
    s16 v3 = v0->unk_10->unk_1E0.y >> FX32_SHIFT;
    s16 v4 = v0->unk_10->unk_1E0.z >> FX32_SHIFT;
    s16 v5 = v0->unk_20.z >> FX32_SHIFT;
    fx32 v6;
    fx32 v7;
    fx32 v8;

    if (v0->unk_74) {
        v6 = FX32_CONST(16);
        v7 = FX32_CONST(12);
        v8 = FX32_CONST(48);
    } else {
        v6 = FX32_CONST(16);
        v7 = FX32_CONST(12);
        v8 = FX32_CONST(48);
    }

    if ((ScreenWipe_Done() == 0) || (v0->unk_78->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        return;
    }

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_04 == 0) {
            ov116_02264764(&v0->unk_44, v0->unk_10->unk_1E0.y, v0->unk_10->unk_1E0.y + v7, 4);

            if (v5 > 0) {
                ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z + v6, 4);
            } else {
                ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z - v6, 4);
            }
        } else {
            ov116_02264764(&v0->unk_44, v0->unk_10->unk_1E0.y, v0->unk_10->unk_1E0.y + v8, 8);

            if (v5 > 0) {
                ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z - v6, 8);
            } else {
                ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z + v6, 4);
            }
        }

        Sound_PlayEffect(1547);

        v0->unk_08 = 0;
        v0->unk_00++;
        break;
    case 1:
    {
        BOOL v9[2];

        v9[0] = ov116_02264774(&v0->unk_44);
        v9[1] = ov116_02264774(&v0->unk_5C);
        v0->unk_10->unk_1E0.y = v0->unk_44.unk_00;
        v0->unk_10->unk_1E0.z = v0->unk_5C.unk_00;

        if (v9[0] && v9[1]) {
            if (v0->unk_04 == 0) {
                *v0->unk_0C = 1;
                ov116_02266FEC(&v0->unk_10->unk_190);
                ov116_02266FEC(&v0->unk_10->unk_1A0);
                ov116_0226432C(v0->unk_10, 0, 0, +5, +5, (0.80), 0);
                ov116_0226432C(v0->unk_10, 0, 0, -5, -5, (0.80), 0);
                ov116_02264764(&v0->unk_44, v0->unk_10->unk_1E0.y, v0->unk_10->unk_1E0.y - v8, 8);

                if (v5 > 0) {
                    ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z + v6, 8);
                } else {
                    ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z - v6, 8);
                }
            } else {
                ov116_02264764(&v0->unk_44, v0->unk_10->unk_1E0.y, v0->unk_10->unk_1E0.y - v7, 4);

                if (v5 > 0) {
                    ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z - v6, 4);
                } else {
                    ov116_02264764(&v0->unk_5C, v0->unk_10->unk_1E0.z, v0->unk_10->unk_1E0.z + v6, 4);
                }
            }

            v0->unk_00++;
        }
    }
    break;
    case 2:
    {
        BOOL v10[2];

        v10[0] = ov116_02264774(&v0->unk_44);
        v10[1] = ov116_02264774(&v0->unk_5C);
        v0->unk_10->unk_1E0.y = v0->unk_44.unk_00;
        v0->unk_10->unk_1E0.z = v0->unk_5C.unk_00;

        if (v10[0] && v10[1]) {
            if (v0->unk_04 == 0) {
                Sound_PlayEffect(1585);
            }
            v0->unk_00++;
        }
    }
    break;
    case 3:
        if (v0->unk_04 == 0) {
            if (v0->unk_08 == (((30 * 3)) - 82)) {
                Sound_PlayEffect(1397);
            }

            if ((++v0->unk_08) >= (((30 * 3)) - 50)) {
                *v0->unk_0C = 2;
                v0->unk_00++;
            }
        } else {
            v0->unk_00++;
        }
        break;
    default:
        if (v0->unk_04 == 0) {
            if ((++v0->unk_08) >= (((30 * 3)) - 45)) {
                *v0->unk_0C = 0;
                Sound_PlayEffect(1547);
                v0->unk_00 = 0;
                v0->unk_04++;
            }
        } else {
            if ((++v0->unk_08) >= 10) {
                if (v0->unk_74) {
                    v0->unk_10->unk_1E0.y = (-8 * FX32_ONE);
                } else {
                    v0->unk_10->unk_1E0.y = (-20 * FX32_ONE);
                }

                v0->unk_10->unk_1E0.z = (0 * FX32_ONE);
                SysTask_Done(param0);
                Heap_FreeToHeap(v0);
            }
        }
        break;
    }
}

void ov116_02263158 (SysTask * param0, void * param1)
{
    UnkStruct_ov116_02262CB8 * v0 = param1;
    int v1 = sub_0200D3E0(v0->unk_0C);

    if ((ScreenWipe_Done() == 0) || (v0->unk_2C->unk_2C.unk_00 == 1)) {
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
        return;
    }

    switch (v0->unk_00) {
    case 0:
    {
        fx32 v2, v3;
        fx32 v4;

        v0->unk_08 = 0;
        sub_0200D638(v0->unk_0C, &v2, &v3);

        if (v0->unk_04 == 0) {
            ov116_02264764(&v0->unk_14, v3, v3 + FX32_CONST(32), 16);
        } else {
            ov116_02264764(&v0->unk_14, v3, v3 - FX32_CONST(32), 4);
        }

        v0->unk_00++;
    }
    break;
    case 1:
    {
        fx32 v5, v6;
        BOOL v7;

        v7 = ov116_02264774(&v0->unk_14);
        sub_0200D638(v0->unk_0C, &v5, &v6);
        sub_0200D614(v0->unk_0C, v5, v0->unk_14.unk_00);

        if (v7) {
            v0->unk_00++;
        }
    }
    break;
    default:

        if (v0->unk_04 == 0) {
            if ((++v0->unk_08) >= 35) {
                v0->unk_04++;
                v0->unk_00 = 0;
            }
        } else {
            if ((++v0->unk_08) >= 10) {
                SysTask_Done(param0);
                Heap_FreeToHeap(v0);
            }
        }
        break;
    }
}

static void ov116_0226323C (SysTask * param0, void * param1)
{
    UnkStruct_ov116_02262D08 * v0 = param1;

    if ((ScreenWipe_Done() == 0) || (v0->unk_3C->unk_2C.unk_00 == 1)) {
        v0->unk_30 = 0;
        SysTask_Done(param0);
        return;
    }

    switch (v0->unk_00) {
    case 0:
    {
        f32 v1, v2;

        sub_0200D364(v0->unk_0C, 7);
        sub_0200D474(v0->unk_0C, 0);
        sub_0200D6A4(v0->unk_0C, 2);
        sub_0200D788(v0->unk_0C, &v1, &v2);
        ov116_02264764(&v0->unk_10, FX_F32_TO_FX32(v2), FX_F32_TO_FX32(2.0f), 2);

        {
            int v3 = (*v0->unk_2C) - 1;
            sub_0200D430(v0->unk_0C, v3);
        }

        v0->unk_00++;
    }
    case 1:
    {
        fx32 v4, v5;
        BOOL v6;

        v6 = ov116_02264774(&v0->unk_10);
        sub_0200D6E8(v0->unk_0C, 1.0f, FX_FX32_TO_F32(v0->unk_10.unk_00));

        if (v6) {
            v0->unk_00++;
        }
    }
    break;
    case 2:
        ov116_02264764(&v0->unk_10, FX_F32_TO_FX32(2.0f), FX_F32_TO_FX32(0.4f), 4);
        v0->unk_00++;
    case 3:
    {
        fx32 v7, v8;
        BOOL v9;

        v9 = ov116_02264774(&v0->unk_10);
        sub_0200D6E8(v0->unk_0C, 1.0f, FX_FX32_TO_F32(v0->unk_10.unk_00));

        if (v9) {
            v0->unk_00++;
        }
    }
    break;
    case 4:
        if (v0->unk_28 != *v0->unk_2C) {
            v0->unk_00 = 0;
        } else {
            if (v0->unk_04 == 0) {
                ov116_02264764(&v0->unk_10, FX_F32_TO_FX32(0.4f), FX_F32_TO_FX32(0.8f), 2);
            } else {
                ov116_02264764(&v0->unk_10, FX_F32_TO_FX32(0.8f), FX_F32_TO_FX32(0.4f), 4);
            }

            v0->unk_00++;
        }

        v0->unk_28 = *v0->unk_2C;

        if (*v0->unk_2C == 0) {
            v0->unk_00 = 0xFF;
        }
        break;
    case 5:
    {
        BOOL v10 = ov116_02264774(&v0->unk_10);
        sub_0200D6E8(v0->unk_0C, 1.0f, FX_FX32_TO_F32(v0->unk_10.unk_00));

        if (v10) {
            v0->unk_00 = 4;
            v0->unk_04 ^= 1;
        }
    }
    break;
    default:
        sub_0200D6E8(v0->unk_0C, 1.0f, 1.0f);
        sub_0200D364(v0->unk_0C, 5);
        sub_0200D474(v0->unk_0C, 2);
        sub_0200D6A4(v0->unk_0C, 0);

        v0->unk_30 = 0;

        SysTask_Done(param0);
        break;
    }
}

static void ov116_02263434 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov116_02262D08 * v1 = param1;
    UnkStruct_ov116_0226501C * v2 = v1->unk_34;
    UnkStruct_ov116_0226501C * v3 = v1->unk_38;

    if ((ScreenWipe_Done() == 0) || (v1->unk_3C->unk_2C.unk_00 == 1)) {
        ov116_0226192C(v2);
        ov116_0226192C(v3);

        Easy3DAnim_Release(&v2->unk_88[0], &v1->unk_3C->unk_24);
        Easy3DAnim_Release(&v2->unk_88[1], &v1->unk_3C->unk_24);
        Easy3DAnim_Release(&v3->unk_88[0], &v1->unk_3C->unk_24);
        Easy3DAnim_Release(&v3->unk_88[1], &v1->unk_3C->unk_24);

        v1->unk_30 = 0;

        SysTask_Done(param0);
        return;
    }

    v0 = (*v1->unk_2C) - 1;

    if ((v0 < 0) || (v0 > 4)) {
        v0 = 0;
    }

    switch (v1->unk_00) {
    case 0:
        ov116_022618A8(v2, v1->unk_3C->unk_00, Unk_ov116_02267BD4[v0][0]);
        ov116_022618B4(v2, v1->unk_40);
        v1->unk_00++;
        break;
    case 1:
        Easy3DAnim_LoadFrom(&v2->unk_88[0], &v2->unk_78, v1->unk_3C->unk_00, Unk_ov116_02267B9C[0][0], 106, &v1->unk_3C->unk_24);
        Easy3DAnim_LoadFrom(&v2->unk_88[1], &v2->unk_78, v1->unk_3C->unk_00, Unk_ov116_02267B9C[0][1], 106, &v1->unk_3C->unk_24);
        Easy3DObject_AddAnim(&v2->unk_00, &v2->unk_88[0]);
        Easy3DObject_AddAnim(&v2->unk_00, &v2->unk_88[1]);
        Easy3DAnim_SetFrame(&v2->unk_88[0], 0);
        Easy3DAnim_SetFrame(&v2->unk_88[1], 0);
        Easy3DObject_SetVisibility(&v2->unk_00, 0);

        v2->unk_1EC = 0;

        ov116_02266FEC(&v2->unk_190);
        ov116_02266FEC(&v2->unk_1A0);
        ov116_0226432C(v2, 0, 0, +5, +5, (0.80), 0);
        ov116_0226432C(v2, 0, 0, -5, -5, (0.80), 0);

        v1->unk_00++;
        break;
    case 2:
        ov116_022618A8(v3, v1->unk_3C->unk_00, Unk_ov116_02267BD4[v0][1]);
        ov116_022618B4(v3, v1->unk_40);
        v1->unk_00++;
        break;
    case 3:

        Easy3DAnim_LoadFrom(&v3->unk_88[0], &v3->unk_78, v1->unk_3C->unk_00, Unk_ov116_02267B9C[1][0], 106, &v1->unk_3C->unk_24);
        Easy3DAnim_LoadFrom(&v3->unk_88[1], &v3->unk_78, v1->unk_3C->unk_00, Unk_ov116_02267B9C[1][1], 106, &v1->unk_3C->unk_24);
        Easy3DObject_AddAnim(&v3->unk_00, &v3->unk_88[0]);
        Easy3DObject_AddAnim(&v3->unk_00, &v3->unk_88[1]);
        Easy3DAnim_SetFrame(&v3->unk_88[0], 0);
        Easy3DAnim_SetFrame(&v3->unk_88[1], 0);
        Easy3DObject_SetVisibility(&v3->unk_00, 1);

        v3->unk_1EC = 1;

        ov116_02266FEC(&v3->unk_190);
        ov116_02266FEC(&v3->unk_1A0);
        ov116_0226432C(v3, 0, 0, +5, +5, (0.80), 0);
        ov116_0226432C(v3, 0, 0, -5, -5, (0.80), 0);

        if (v1->unk_40) {
            Easy3DObject_SetPosition(&v2->unk_00, 0, (-8 * FX32_ONE), 0);
            Easy3DObject_SetPosition(&v3->unk_00, 0, (-8 * FX32_ONE), 0);
            v2->unk_1E0.y = (-8 * FX32_ONE);
            v3->unk_1E0.y = (-8 * FX32_ONE);
        }

        v1->unk_00++;
        break;
    case 4:
        if (v3->unk_1EC == 0) {
            Easy3DObject_SetVisibility(&v2->unk_00, 1);
            Easy3DObject_SetVisibility(&v3->unk_00, 0);
            v2->unk_1EC = 1;
            v1->unk_00++;
        }
        break;
    case 5:
        if (*v1->unk_2C == 0) {
            v1->unk_00 = 0xFF;
        } else if (v1->unk_28 != *v1->unk_2C) {
            ov116_0226192C(v2);
            ov116_0226192C(v3);
            Easy3DAnim_Release(&v2->unk_88[0], &v1->unk_3C->unk_24);
            Easy3DAnim_Release(&v2->unk_88[1], &v1->unk_3C->unk_24);
            Easy3DAnim_Release(&v3->unk_88[0], &v1->unk_3C->unk_24);
            Easy3DAnim_Release(&v3->unk_88[1], &v1->unk_3C->unk_24);
            v1->unk_00 = 0;
        }
        v1->unk_28 = *v1->unk_2C;
        break;
    default:
        ov116_0226192C(v2);
        ov116_0226192C(v3);

        Easy3DAnim_Release(&v2->unk_88[0], &v1->unk_3C->unk_24);
        Easy3DAnim_Release(&v2->unk_88[1], &v1->unk_3C->unk_24);
        Easy3DAnim_Release(&v3->unk_88[0], &v1->unk_3C->unk_24);
        Easy3DAnim_Release(&v3->unk_88[1], &v1->unk_3C->unk_24);

        v1->unk_30 = 0;
        SysTask_Done(param0);

        break;
    }
}

static void ov116_0226377C (UnkStruct_ov116_02262A8C * param0)
{
    const u16 v0[] = {0x1, 0x2, 0x3, 0x4};
    param0->unk_279C.unk_10 += v0[param0->unk_279C.unk_0C];
}

static void ov116_022637B4 (UnkStruct_ov116_02262A8C * param0)
{
    const u16 v0[] = {700, 1400, 2100, 2800};
    param0->unk_279C.unk_10 += v0[param0->unk_279C.unk_0C - 1];
}

static BOOL ov116_022637F0 (UnkStruct_ov116_02262A8C * param0)
{
    switch (param0->unk_279C.unk_38) {
    case ((4 * 30) - 1):
        param0->unk_279C.unk_08 = 1;
        break;
    case ((9 * 30) - 1):
        param0->unk_279C.unk_08 = 2;
        break;
    case ((14 * 30) - 1):
        param0->unk_279C.unk_08 = 3;
        break;
    case ((19 * 30) - 1):
        param0->unk_279C.unk_08 = 4;
        break;
    case ((24 * 30) - 1):
        param0->unk_279C.unk_08 = 5;
        break;
    case 0:
        param0->unk_279C.unk_08 = 0;
        break;
    }

    return ov116_0226386C(param0, param0->unk_279C.unk_38, &param0->unk_279C.unk_0C);
}

static BOOL ov116_0226386C (UnkStruct_ov116_02262A8C * param0, int param1, int * param2)
{
    switch (param1) {
    case ((30 * 10) - 1):
        *param2 = 1;
        return 1;
    case ((30 * 20) - 1):
        *param2 = 2;
        return 1;
    case ((30 * 30) - 1):
        *param2 = 3;
        return 1;
    case ((30 * 40) - 1):
        *param2 = 4;
        return 1;
    case 0:
        *param2 = 0;
        break;
    }

    return 0;
}

static void ov116_022638C8 (UnkStruct_ov116_02262A8C * param0)
{
    int v0;
    int v1 = param0->unk_04;

    for (v0 = 0; v0 < v1; v0++) {
        if (v0 == param0->unk_00) {
            continue;
        }

        switch (param0->unk_2858[v0].unk_00) {
        case 0:
            if (ov116_02261EA4(param0, v0) != 1) {
                ov116_02261E58(param0, v0, 1);
            }

            if (ov116_0226386C(param0, param0->unk_279C.unk_20[v0], &param0->unk_279C.unk_28[v0])) {
                ov116_02262D08(param0, v0);
            }

            param0->unk_279C.unk_20[v0]++;
            break;
        case 1:
            param0->unk_279C.unk_1E = 0;
            param0->unk_279C.unk_20[v0] = 0;
            param0->unk_279C.unk_28[v0] = 0;
            param0->unk_2018.unk_28 = 0;

            if (ov116_02261EA4(param0, v0) != 3) {
                if (param0->unk_2874 == 0) {
                    ov116_02261E58(param0, v0, 3);
                    ov116_02262CB8(param0, v0);
                    param0->unk_2874 = 1;
                }
            }
            break;
        case 2:
            param0->unk_2874 = 0;
            param0->unk_279C.unk_1E = 0;
            param0->unk_279C.unk_20[v0] = 0;
            param0->unk_279C.unk_28[v0] = 0;
            param0->unk_2858[v0].unk_00 = 0;
            break;
        }
    }
}

static void ov116_022639BC (UnkStruct_ov116_02262A8C * param0)
{
    switch (param0->unk_2858[param0->unk_00].unk_00) {
    case 0:
        if (ov116_02262C6C(param0, NULL)) {
            param0->unk_279C.unk_1C = 0;
            ov116_02262DC0(param0);
            ov116_02263DB8(param0);
            param0->unk_2858[param0->unk_00].unk_00 = 1;

            CommSys_SendData(24, &param0->unk_2858[param0->unk_00], sizeof(UnkStruct_ov116_02260490));

            param0->unk_279C.unk_38 = 0;
            param0->unk_279C.unk_1E = 0;
            param0->unk_2018.unk_28 = 0;
        } else {
            ov116_02262C84(param0);
            ov116_02263BA0(param0);
            ov116_02263E20(param0);
            ov116_0226377C(param0);
            param0->unk_279C.unk_20[param0->unk_00]++;
        }
        break;
    case 1:
        if ((++param0->unk_279C.unk_1C) >= ((30 * 3))) {
            param0->unk_2858[param0->unk_00].unk_00 = 2;
        }

        param0->unk_279C.unk_38 = 0;
        param0->unk_279C.unk_1E = 0;
        param0->unk_279C.unk_20[param0->unk_00] = 0;
        break;
    case 2:
        if (param0->unk_279C.unk_1C != 0) {
            param0->unk_279C.unk_38 = 0;
            param0->unk_279C.unk_1E = 0;
            param0->unk_279C.unk_1C = 0;
            param0->unk_279C.unk_20[param0->unk_00] = 0;

            if (param0->unk_279C.unk_18 != param0->unk_279C.unk_14) {
                param0->unk_279C.unk_14 = param0->unk_279C.unk_18;
            }

            ov116_02262AE4(param0);
            CommSys_SendData(24, &param0->unk_2858[param0->unk_00], sizeof(UnkStruct_ov116_02260490));
        } else {
            param0->unk_2858[param0->unk_00].unk_00 = 0;
        }
        break;
    case 3:
        if ((++param0->unk_279C.unk_1C) >= NELEMS(Unk_ov116_02267C4C)) {
            param0->unk_279C.unk_1C = 0;
            ov116_02262AE4(param0);
            param0->unk_2858[param0->unk_00].unk_00 = 0;
        }

        break;
    }
}

void ov116_02263B30 (UnkStruct_ov116_02262A8C * param0)
{
    int v0;
    int v1 = param0->unk_04;

    if (param0->unk_279C.unk_04 < ((30 * 40) - 0)) {
        ov116_022639BC(param0);
        ov116_022638C8(param0);

        if (ov116_022637F0(param0) == 1) {
            if (param0->unk_2858[param0->unk_00].unk_00 == 0) {
                (void)0;
            }

            ov116_02262D64(param0, param0->unk_00);
            ov116_022637B4(param0);
            Sound_PlayEffect(1396);
        }

        ov116_02263DE8(param0);

        param0->unk_279C.unk_38++;
        param0->unk_279C.unk_04++;
        param0->unk_279C.unk_1E++;
    }
}

static const TouchScreenHitTable Unk_ov116_02267B38[] = {
    {0xFE, 0x80, 0x80, 0x30},
    {0xFF, 0x0, 0x0, 0x0}
};

static const TouchScreenHitTable Unk_ov116_02267B40[] = {
    {0xFE, 0x80, 0x80, 0x40},
    {0xFF, 0x0, 0x0, 0x0}
};

void ov116_02263BA0 (UnkStruct_ov116_02262A8C * param0)
{
    {
        u32 v0, v1;
        s16 v2, v3;
        BOOL v4;
        BOOL v5 = TouchScreen_GetHoldState(&v0, &v1);
        TouchScreenHitTable * v6;
        int v7;

        param0->unk_279C.unk_A4 = 0;

        if (param0->unk_2870) {
            v7 = sub_020227DC(Unk_ov116_02267B40, v0, v1);
        } else {
            v7 = sub_020227DC(Unk_ov116_02267B38, v0, v1);
        }

        if (v7 == 0xffffffff) {
            param0->unk_1FBC.unk_00 = 0;
            param0->unk_1FBC.unk_04 = 0;

            if (param0->unk_FC.unk_1F8 != 0) {
                ov116_0226452C(&param0->unk_FC, 1.0f);
                v4 = ov116_0226452C(&param0->unk_308[0], 0.5f);

                if (v4 = 1) {
                    VecFx32 v8 = {0, (FX32_CONST(100)), 0};
                    VecFx32 v9;

                    MTX_MultVec43(&v8, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
                    param0->unk_279C.unk_A4 = 1;
                }
            } else {
                param0->unk_FC.unk_1FC = 0.0f;
                param0->unk_FC.unk_200 = 0.0f;
                ov116_0226432C(&param0->unk_FC, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, (2.35 * 0.80), 0);
                ov116_0226432C(&param0->unk_308[0], param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, (0.22), 0);
            }
        } else {
            f32 v10 = ((100 - (param0->unk_1FB0.y >> FX32_SHIFT)) / 40);

            if ((param0->unk_1FB0.y >> FX32_SHIFT) >= 95) {
                v10 = 0.1f;
            }

            if (v10 >= (0.22)) {
                v10 = (0.22);
            } else {
                v10 = (0.22) - v10;
            }

            if (param0->unk_1FBC.unk_00 == 0) {
                param0->unk_1FBC.unk_00 = v0;
                param0->unk_1FBC.unk_04 = v1;
            }

            ov116_0226432C(&param0->unk_FC, v0, v1, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, (2.50 * 0.80), 1);
            v4 = ov116_0226432C(&param0->unk_308[0], v0, v1, param0->unk_1FBC.unk_00, param0->unk_1FBC.unk_04, v10, 1);

            if (v4 = 1) {
                VecFx32 v11 = {0, (FX32_CONST(100)), 0};
                VecFx32 v12;

                MTX_MultVec43(&v11, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
                param0->unk_279C.unk_A4 = 1;

                if (param0->unk_279C.unk_B4 == 0) {
                    param0->unk_279C.unk_B4 = 1;
                }
            }

            if (v0 != 0) {
                if (Sound_IsEffectPlaying(1394) == 0) {
                    Sound_PlayEffect(1394);
                }

                ov116_0226493C(param0, v0, v1);
            }

            param0->unk_1FBC.unk_00 = v0;
            param0->unk_1FBC.unk_04 = v1;
        }
    }
}

static const UnkStruct_ov116_02267C88 Unk_ov116_02267C88[][4] = {
    {
        {0x13, 0x2D},
        {0x13, 0x2D},
        {0x13, 0x5},
        {0x13, 0x5}
    },
    {
        {0x14, 0x1E},
        {0x14, 0x32},
        {0x19, 0x14},
        {0x19, 0xA}
    },
    {
        {0x14, 0x12},
        {0x1E, 0x28},
        {0x23, 0x1E},
        {0x28, 0xC}
    },
    {
        {0x14, 0xF},
        {0x1E, 0x1E},
        {0x23, 0x28},
        {0x2D, 0xF}
    }
};

static inline u32 inline_ov116_02263E20 (void)
{
    u32 v0 = LCRNG_GetSeed();
    u32 v1;

    v1 = LCRNG_Next();
    LCRNG_SetSeed(v0);

    return v1;
}

static inline s8 inline_ov116_02263E20_1 (void)
{
    if (LCRNG_Next() % 2) {
        return +1;
    } else {
        return -1;
    }
}

static inline s8 inline_ov116_02263E20_2 (s16 param0)
{
    if (param0 >= 0) {
        return +1;
    } else {
        return -1;
    }
}

void ov116_02263DB8 (UnkStruct_ov116_02262A8C * param0)
{
    param0->unk_279C.unk_40 = 0;
    param0->unk_279C.unk_00 = 0;
    param0->unk_279C.unk_A4 = 0;
    param0->unk_279C.unk_A8 = 0;
    param0->unk_279C.unk_AC = 0;
    param0->unk_279C.unk_B0 = 0;
    param0->unk_279C.unk_0C = 0;
}

void ov116_02263DE8 (UnkStruct_ov116_02262A8C * param0)
{
    BOOL v0 = 1;

    if (param0->unk_279C.unk_1E < ((30 * 5) - 1)) {
        return;
    }

    if (param0->unk_279C.unk_14 == 8) {
        return;
    }

    param0->unk_279C.unk_18 = param0->unk_279C.unk_14;
    param0->unk_279C.unk_14++;
    param0->unk_279C.unk_1E = 0;
    param0->unk_2018.unk_28 = 1;
}

void ov116_02263E20 (UnkStruct_ov116_02262A8C * param0)
{
    BOOL v0;
    BOOL v1;
    BOOL v2;
    BOOL v3;
    fx32 v4;
    fx32 v5;
    s16 v6 = 0;
    s16 v7 = 0;
    s16 v8[] = {(30 * 4), (30 * 3), (30 * 2), (30 * 1.5)};

    param0->unk_279C.unk_00++;

    if (param0->unk_279C.unk_40 != 0) {
        if (param0->unk_279C.unk_42 < (8 + 2) - 1) {
            if (param0->unk_279C.unk_42 <= 8) {
                v4 = param0->unk_279C.unk_74.unk_00;
                v5 = param0->unk_279C.unk_8C.unk_00;
                v2 = ov116_022646FC(&param0->unk_279C.unk_74);
                v3 = ov116_022646FC(&param0->unk_279C.unk_8C);
                v6 = (param0->unk_279C.unk_74.unk_00 - v4) >> FX32_SHIFT;
                v7 = (param0->unk_279C.unk_8C.unk_00 - v5) >> FX32_SHIFT;

                if ((v2 == 1) || (v3 == 1)) {
                    param0->unk_279C.unk_74.unk_00 -= v4;
                    param0->unk_279C.unk_8C.unk_00 -= v5;
                }
            } else {
                v6 = param0->unk_279C.unk_74.unk_00 >> FX32_SHIFT;
                v7 = param0->unk_279C.unk_8C.unk_00 >> FX32_SHIFT;
            }
        } else {
            v4 = param0->unk_279C.unk_44.unk_00;
            v5 = param0->unk_279C.unk_5C.unk_00;
            v2 = ov116_022646FC(&param0->unk_279C.unk_44);
            v3 = ov116_022646FC(&param0->unk_279C.unk_5C);
            v6 = (param0->unk_279C.unk_44.unk_00 - v4) >> FX32_SHIFT;
            v7 = (param0->unk_279C.unk_5C.unk_00 - v5) >> FX32_SHIFT;

            if ((v2 == 1) || (v3 == 1)) {
                if (param0->unk_279C.unk_A8 == 0) {
                    param0->unk_279C.unk_A8 = 1;
                    param0->unk_279C.unk_44.unk_00 -= v4;
                    param0->unk_279C.unk_5C.unk_00 -= v5;
                }
            }
        }

        v0 = ov116_0226432C(&param0->unk_FC, 0, 0, v6, v7, (2.35 * 0.80), 0);
        v1 = ov116_0226432C(&param0->unk_308[0], 0, 0, v6, v7, (0.80), 0);

        if (v1) {
            VecFx32 v9 = {0, (FX32_CONST(100)), 0};
            VecFx32 v10;
            MTX_MultVec43(&v9, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
        }

        param0->unk_279C.unk_42++;
        param0->unk_279C.unk_40--;
    } else {
        if ((param0->unk_279C.unk_00 % v8[param0->unk_279C.unk_0C]) == 0) {
            param0->unk_279C.unk_00 = 0;
            param0->unk_279C.unk_AC = 1;
        }

        if ((param0->unk_279C.unk_A4 == 0) && (param0->unk_279C.unk_A8 == 1)) {
            v6 = param0->unk_279C.unk_44.unk_00 >> FX32_SHIFT;
            v7 = param0->unk_279C.unk_5C.unk_00 >> FX32_SHIFT;
            v0 = ov116_0226432C(&param0->unk_FC, 0, 0, v6, v7, (2.35 * 0.80), 0);
            v1 = ov116_0226432C(&param0->unk_308[0], 0, 0, v6, v7, (0.80), 0);

            if (v1) {
                VecFx32 v11 = {0, (FX32_CONST(100)), 0};
                VecFx32 v12;

                MTX_MultVec43(&v11, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
            }
        } else if ((param0->unk_279C.unk_A4 == 1) && (param0->unk_279C.unk_A8 == 1)) {
            v6 = param0->unk_279C.unk_44.unk_00 >> FX32_SHIFT;
            v7 = param0->unk_279C.unk_5C.unk_00 >> FX32_SHIFT;
            v0 = ov116_0226432C(&param0->unk_FC, 0, 0, v6, v7, (2.35 * 0.80), 0);
            v1 = ov116_0226432C(&param0->unk_308[0], 0, 0, v6, v7, (0.80), 0);

            if (v1) {
                VecFx32 v13 = {0, (FX32_CONST(100)), 0};
                VecFx32 v14;
                MTX_MultVec43(&v13, &param0->unk_308[0].unk_1B0, &param0->unk_1FB0);
            }
        }

        if ((param0->unk_279C.unk_B0 == 0) || ((param0->unk_279C.unk_AC == 1) && (param0->unk_279C.unk_A8 == 1))) {
            int v15 = inline_ov116_02263E20() % 100;
            int v16 = 0;
            int v17;
            int v18 = Unk_ov116_02267C88[param0->unk_279C.unk_0C][0].unk_04;
            s16 v19, v20;
            s16 v21, v22;
            s16 v23, v24, v25;

            v19 = v20 = 0;

            for (v17 = 0; v17 < 3; v17++) {
                if (v15 < v18) {
                    break;
                }

                v18 += Unk_ov116_02267C88[param0->unk_279C.unk_0C][v17 + 1].unk_04;
            }

            v16 = Unk_ov116_02267C88[param0->unk_279C.unk_0C][v17].unk_00;
            v16 *= 1;

            {
                v23 = param0->unk_1FB0.x >> FX32_SHIFT;
                v25 = param0->unk_1FB0.y >> FX32_SHIFT;
                v24 = param0->unk_1FB0.z >> FX32_SHIFT;

                if (param0->unk_1FB0.z == FX32_CONST(0)) {
                    v24 = inline_ov116_02263E20_1();
                } else {
                    v24 = -inline_ov116_02263E20_2(v24);
                }

                if (param0->unk_1FB0.x == FX32_CONST(0)) {
                    v23 = inline_ov116_02263E20_1();
                } else {
                    v23 = inline_ov116_02263E20_2(v23);

                    if (v24 < 0) {
                        v23 *= -1;
                    }
                }

                if (param0->unk_279C.unk_0C == 0) {
                    v23 = 0;
                }

                v19 = v16 * v23;
                v20 = v16 * v24;
            }

            v21 = 20 * v23;
            v22 = 20 * v24;

            param0->unk_279C.unk_B8 = v19;
            param0->unk_279C.unk_BA = v20;

            ov116_0226469C(&param0->unk_279C.unk_74, FX32_CONST(0), FX32_CONST(v21), FX32_CONST(0), 8);
            ov116_0226469C(&param0->unk_279C.unk_8C, FX32_CONST(0), FX32_CONST(v22), FX32_CONST(0), 8);
            ov116_0226469C(&param0->unk_279C.unk_44, FX32_CONST(0), FX32_CONST(v19), FX32_CONST(0), 12);
            ov116_0226469C(&param0->unk_279C.unk_5C, FX32_CONST(0), FX32_CONST(v20), FX32_CONST(0), 12);

            param0->unk_279C.unk_40 = 12 + (8 + 2);
            param0->unk_279C.unk_42 = 0;
            param0->unk_279C.unk_3C = v19;
            param0->unk_279C.unk_3E = v20;
            param0->unk_279C.unk_A4 = 0;
            param0->unk_279C.unk_AC = 0;
            param0->unk_279C.unk_A8 = 0;
            param0->unk_279C.unk_B0 = 1;
        }
    }
}
