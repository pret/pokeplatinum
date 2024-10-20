#include "overlay041/ov41_022567B0.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay041/struct_ov41_022567B0_1.h"
#include "overlay041/struct_ov41_022567B0_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"
#include "unk_0201D15C.h"
#include "unk_02099D44.h"

struct UnkStruct_ov41_022567B0_t {
    const UnkStruct_ov41_022567B0_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    UnkStruct_ov25_022558C4 *unk_24[4];
    UnkStruct_ov25_02255958 unk_34;
    Window unk_48;
    u32 unk_58;
    BOOL unk_5C;
    BOOL unk_60;
    BOOL unk_64;
    u16 unk_68;
    u16 unk_6A;
    u32 unk_6C;
};

static void ov41_0225680C(UnkStruct_ov41_022567B0 *param0, const UnkStruct_ov41_022567B0_1 *param1);
static void ov41_02256864(UnkStruct_ov41_022567B0 *param0);
static void ov41_022568C8(UnkStruct_ov25_02255224 *param0);
static void ov41_022568DC(SysTask *param0, void *param1);
static void ov41_022569BC(UnkStruct_ov41_022567B0 *param0, u32 param1);
static void ov41_02256A1C(SysTask *param0, void *param1);
static void ov41_02256A74(SysTask *param0, void *param1);
static void ov41_02256A8C(SysTask *param0, void *param1);
static void ov41_02256AE4(SysTask *param0, void *param1);
static void ov41_02256AFC(SysTask *param0, void *param1);
static void ov41_02256B60(SysTask *param0, void *param1);
static void ov41_02256B8C(SysTask *param0, void *param1);
static void ov41_02256D1C(SysTask *param0, void *param1);

BOOL ov41_022567B0(UnkStruct_ov41_022567B0 **param0, const UnkStruct_ov41_022567B0_1 *param1, BgConfig *param2)
{
    UnkStruct_ov41_022567B0 *v0 = (UnkStruct_ov41_022567B0 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov41_022567B0));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();
        v0->unk_68 = 0;

        ov41_0225680C(v0, param1);

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov41_022567F8(UnkStruct_ov41_022567B0 *param0)
{
    if (param0 != NULL) {
        ov41_02256864(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov41_0225680C(UnkStruct_ov41_022567B0 *param0, const UnkStruct_ov41_022567B0_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { (96 << FX32_SHIFT), (96 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            1,
        },
        {
            { (187 << FX32_SHIFT), (50 << FX32_SHIFT) },
            1,
            0,
            2,
            0,
            0,
        },
        {
            { (187 << FX32_SHIFT), (96 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            0,
        },
        {
            { (187 << FX32_SHIFT), (142 << FX32_SHIFT) },
            5,
            0,
            2,
            0,
            0,
        },
    };
    int v1;

    sub_02006EC0(12, 89, 1, 0, 0, 1, 8);
    ov25_02255958(&param0->unk_34, 12, 87, 88, 8);

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_24[v1] = ov25_02255810(param0->unk_20, &v0[v1], &param0->unk_34);
    }
}

static void ov41_02256864(UnkStruct_ov41_022567B0 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_24[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_24[v0]);
        }
    }

    ov25_022559B0(&param0->unk_34);
}

static const UnkStruct_ov25_0225517C Unk_ov41_02256E00[] = {
    { 0x0, ov41_022568DC, 0x0 },
    { 0x1, ov41_02256A1C, 0x0 },
    { 0x2, ov41_02256A74, 0x0 },
    { 0x3, ov41_02256A8C, 0x0 },
    { 0x4, ov41_02256AE4, 0x0 },
    { 0x5, ov41_02256AFC, 0x0 },
    { 0x6, ov41_02256B60, 0x0 },
    { 0x7, ov41_02256B8C, 0x0 },
    { 0x8, ov41_02256D1C, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov41_0225688C(UnkStruct_ov41_022567B0 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov41_02256E00, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov41_022568B0(UnkStruct_ov41_022567B0 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov41_022568BC(UnkStruct_ov41_022567B0 *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov41_022568C8(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov41_022567B0 *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov41_022568DC(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    static const BgTemplate v1 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };
    GXSDispCnt v2;
    UnkStruct_ov41_022567B0 *v3;
    u32 v4;

    GF_ASSERT(GF_heap_c_dummy_return_true(8));
    v3 = ov25_0225523C(param1);

    sub_020183C4(v3->unk_04, 6, &v0, 0);
    sub_020183C4(v3->unk_04, 7, &v1, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    v4 = sub_02006E3C(12, 86, v3->unk_04, 6, 0, 0, 1, 8);
    v4 /= 0x20;

    sub_02006E60(12, 85, v3->unk_04, 6, 0, 0, 1, 8);
    ov25_022546B8(0, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    ov41_022569BC(v3, v4);
    sub_02019448(v3->unk_04, 7);

    v2 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v2.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);

    ov41_022568C8(param1);
    GF_ASSERT(GF_heap_c_dummy_return_true(8));
}

static void ov41_022569BC(UnkStruct_ov41_022567B0 *param0, u32 param1)
{
    WindowTemplate v0 = {
        7, 2, 2, 20, 19, 0, 0
    };

    param0->unk_58 = param1;
    v0.baseTile = param1;

    sub_0201A8D4(param0->unk_04, &param0->unk_48, &v0);

    if (sub_02099DD0(param0->unk_00->unk_08, param0->unk_48.unk_0C, (20 * 19 * 0x20)) == 0) {
        BGL_FillWindow(&param0->unk_48, 0x4);
    }

    sub_0201A9F4(&param0->unk_48);
    sub_0201ACCC(&param0->unk_48);
}

static void ov41_02256A1C(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = ov25_0225523C(param1);

    switch (ov25_02255248(param1)) {
    case 0:
        v0->unk_5C = 1;
        ov25_0225524C(param1);
        break;
    case 1:
        sub_02099DA8(v0->unk_00->unk_08, v0->unk_48.unk_0C, (20 * 19 * 0x20));
        BGL_DeleteWindow(&v0->unk_48);
        sub_02019044(v0->unk_04, 6);
        sub_02019044(v0->unk_04, 7);
        ov41_022568C8(param1);
    }
}

static void ov41_02256A74(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0;

    v0 = ov25_0225523C(param1);
    sub_0201ACCC(&v0->unk_48);
    ov41_022568C8(param1);
}

static void ov41_02256A8C(SysTask *param0, void *param1)
{
    s32 v0, v1, v2, v3;
    UnkStruct_ov41_022567B0 *v4;

    v4 = ov25_0225523C(param1);
    v0 = v4->unk_00->unk_00 * 2;
    v1 = v4->unk_00->unk_04 * 2;
    v3 = ((v1 >> 3) * 20) + (v0 >> 3);

    BGL_WindowColor(&v4->unk_48, 0x1, v0, v1, 2, 2);
    GXS_LoadBG3Char((u8 *)(v4->unk_48.unk_0C) + (v3 * 0x20), (v4->unk_58 + v3) * 0x20, 0x20);
    ov41_022568C8(param1);
}

static void ov41_02256AE4(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0;

    v0 = ov25_0225523C(param1);
    sub_0201ACCC(&v0->unk_48);
    ov41_022568C8(param1);
}

static void ov41_02256AFC(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = ov25_02255240(param1);

    ov25_022558C4(v0->unk_24[1], (v1->unk_5B74) ? 2 : 1);
    ov25_022558C4(v0->unk_24[2], (v1->unk_5B75) ? 4 : 3);
    ov25_022558C4(v0->unk_24[3], (v1->unk_5B76) ? 6 : 5);
    ov41_022568C8(param1);
}

static void ov41_02256B60(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = ov25_02255240(param1);

    BGL_FillWindow(&v0->unk_48, 0x4);
    sub_0201ACCC(&v0->unk_48);
    ov41_022568C8(param1);
}

static void ov41_02256B8C(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = ov25_02255240(param1);
    u32 v2;

    v2 = ov25_02255248(param1);

    if ((v2 != 0) && v0->unk_5C) {
        ov41_022568C8(param1);
        return;
    }

    switch (v2) {
    case 0:
        v0->unk_68 += 336;
        v0->unk_6A = 336;
        ov25_02255950(v0->unk_24[0], v0->unk_68);
        v0->unk_64 = 0;
        v0->unk_60 = 0;
        v0->unk_5C = 0;
        ov25_0225524C(param1);
        break;
    case 1:
        v0->unk_68 += v0->unk_6A;
        ov25_02255950(v0->unk_24[0], v0->unk_68);
        v0->unk_6A += 336;

        if (v0->unk_6A >= 12288) {
            v0->unk_6A = 12288;
            v0->unk_64 = 1;
            ov25_0225524C(param1);
        }
        break;
    case 2:
        v0->unk_68 += v0->unk_6A;
        ov25_02255950(v0->unk_24[0], v0->unk_68);

        if (v0->unk_60) {
            v0->unk_6C = MTRNG_Next() & 7;

            if (v0->unk_6A > 6656) {
                v0->unk_6A = 6656;
            }

            ov25_0225524C(param1);
        }
        break;
    case 3:
        v0->unk_68 += v0->unk_6A;
        ov25_02255950(v0->unk_24[0], v0->unk_68);

        if (v0->unk_6C == 0) {
            v0->unk_6C--;
        } else {
            ov25_0225524C(param1);
        }
        break;
    case 4:
        if (v0->unk_6A > 80) {
            v0->unk_6A -= 80;
            v0->unk_68 += v0->unk_6A;
            ov25_02255950(v0->unk_24[0], v0->unk_68);
        } else {
            v0->unk_6A = 0;
            ov41_022568C8(param1);
        }
        break;
    }
}

static void ov41_02256D1C(SysTask *param0, void *param1)
{
    UnkStruct_ov41_022567B0 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov41_022567B0_1 *v1 = ov25_02255240(param1);

    switch (ov25_02255248(param1)) {
    case 0:
        v0->unk_60 = 1;
        ov25_0225524C(param1);
        break;
    case 1:
        if (ov41_022568B0(v0, 7)) {
            PoketchSystem_PlaySoundEffect(1642);
            ov41_022568C8(param1);
        }
        break;
    }
}
