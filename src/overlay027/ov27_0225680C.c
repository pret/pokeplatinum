#include "overlay027/ov27_0225680C.h"

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
#include "overlay027/struct_ov27_0225680C_1.h"
#include "overlay027/struct_ov27_0225680C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov27_02256E90;

struct UnkStruct_ov27_0225680C_t {
    const UnkStruct_ov27_0225680C_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    NNSG2dOamManagerInstance *unk_30;
    UnkStruct_ov25_02255958 unk_34;
    UnkStruct_ov25_02255958 unk_48;
    UnkStruct_ov25_022555E8 *unk_5C;
    UnkStruct_ov25_022558C4 *unk_60[9];
    SysTask *unk_84;
};

static void ov27_022568A8(SysTask *param0, void *param1);
static void ov27_022568B4(UnkStruct_ov27_0225680C *param0);
static void ov27_02256A04(UnkStruct_ov25_02255224 *param0);
static void ov27_02256A18(SysTask *param0, void *param1);
static BOOL ov27_02256AEC(UnkStruct_ov27_0225680C *param0);
static void ov27_02256B24(UnkStruct_ov27_0225680C *param0, const UnkStruct_ov27_0225680C_1 *param1);
static void ov27_02256B80(SysTask *param0, void *param1);
static void ov27_02256BB0(SysTask *param0, void *param1);
static void ov27_02256BE8(SysTask *param0, void *param1);
static void ov27_02256C2C(SysTask *param0, void *param1);
static void ov27_02256C80(SysTask *param0, void *param1);
static void ov27_02256D00(SysTask *param0, void *param1);
static void ov27_02256D80(SysTask *param0, void *param1);
static void ov27_02256E1C(SysTask *param0, void *param1);
static BOOL ov27_02256E90(UnkStruct_ov27_02256E90 *param0, u32 param1);
static void ov27_02256EC4(BgConfig *param0, u32 param1);
static void ov27_02256F24(SysTask *param0, void *param1);
static void ov27_02256F7C(UnkStruct_ov27_0225680C *param0);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);

BOOL ov27_0225680C(UnkStruct_ov27_0225680C **param0, const UnkStruct_ov27_0225680C_1 *param1, BgConfig *param2)
{
    UnkStruct_ov27_0225680C *v0 = (UnkStruct_ov27_0225680C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov27_0225680C));

    if (v0 != NULL) {
        v0->unk_00 = param1;
        v0->unk_5C = ov25_02254664();
        v0->unk_04 = BgConfig_New(8);

        if (v0->unk_04 == NULL) {
            return 0;
        }

        if (ov25_02255958(&v0->unk_34, 12, 18, 19, 8)) {
            if (ov25_02255958(&v0->unk_48, 12, 3, 4, 8)) {
                ov25_02255090(v0->unk_08, 8);
                v0->unk_84 = NULL;
                *param0 = v0;
                return 1;
            } else {
                ov25_022559B0(&(v0->unk_34));
            }
        }
    }

    return 0;
}

void ov27_02256890(UnkStruct_ov27_0225680C *param0)
{
    if (param0) {
        if (param0->unk_04) {
            Heap_FreeToHeap(param0->unk_04);
        }

        Heap_FreeToHeap(param0);
    }
}

static void ov27_022568A8(SysTask *param0, void *param1)
{
    UnkStruct_ov27_0225680C *v0 = (UnkStruct_ov27_0225680C *)param1;
    ov27_022568B4(v0);
}

static void ov27_022568B4(UnkStruct_ov27_0225680C *param0)
{
    u32 v0, v1;

    CP_SetDiv32_32(param0->unk_00->unk_14, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    ov25_022558C4(param0->unk_60[0], 0 + v0);
    ov25_022558C4(param0->unk_60[1], 0 + v1);

    CP_SetDiv32_32(param0->unk_00->unk_10, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    ov25_022558C4(param0->unk_60[2], 0 + v0);
    ov25_022558C4(param0->unk_60[3], 0 + v1);

    CP_SetDiv32_32(param0->unk_00->unk_0C, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    ov25_022558C4(param0->unk_60[4], 0 + v0);
    ov25_022558C4(param0->unk_60[5], 0 + v1);

    CP_SetDiv32_32(param0->unk_00->unk_08, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    ov25_022558C4(param0->unk_60[6], 0 + v0);
    ov25_022558C4(param0->unk_60[7], 0 + v1);
}

static const UnkStruct_ov25_0225517C Unk_ov27_02256FF0[] = {
    { 0x0, ov27_02256A18, 0x0 },
    { 0x1, ov27_02256B80, sizeof(UnkStruct_ov27_02256E90) },
    { 0x3, ov27_02256F24, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov27_022569C8(UnkStruct_ov27_0225680C *param0, u32 param1)
{
    ov25_0225517C(Unk_ov27_02256FF0, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov27_022569EC(UnkStruct_ov27_0225680C *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov27_022569F8(UnkStruct_ov27_0225680C *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov27_02256A04(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov27_0225680C *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov27_02256A18(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0x800,
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
    GXSDispCnt v1;
    UnkStruct_ov27_0225680C *v2 = ov25_0225523C(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 21, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 20, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    {
        UnkStruct_ov27_0225680C *v3 = ov25_0225523C(param1);
        const UnkStruct_ov27_0225680C_1 *v4 = ov25_02255240(param1);

        ov27_02256AEC(v3);
        ov27_02256B24(v3, v4);

        v2->unk_84 = SysTask_Start(ov27_022568A8, v2, 2 + 1);

        ov27_022568B4(v3);

        if (v4->unk_00) {
            ov27_022569C8(v3, 1);
        }
    }

    v1 = GXS_GetDispCnt();

    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    ov27_02256A04(param1);
}

static BOOL ov27_02256AEC(UnkStruct_ov27_0225680C *param0)
{
    sub_02006EC0(12, 2, 1, 0, 0, 1, 8);
    sub_02006EC0(12, 22, 1, 80 * 0x20, 0, 1, 8);

    return 1;
}

static void ov27_02256B24(UnkStruct_ov27_0225680C *param0, const UnkStruct_ov27_0225680C_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { 32 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (32 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 80 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (80 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 128 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (128 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 176 << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (176 + 16) << FX32_SHIFT, 40 << FX32_SHIFT },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { 112 << FX32_SHIFT, 96 << FX32_SHIFT },
            10,
            0,
            2,
            2,
            0,
        },
    };
    u32 v1;

    for (v1 = 0; v1 <= 7; v1++) {
        param0->unk_60[0 + v1] = ov25_02255810(param0->unk_5C, &v0[v1], &param0->unk_48);
    }

    param0->unk_60[8] = ov25_02255810(param0->unk_5C, &v0[v1], &param0->unk_34);

    if (param1->unk_00 == 0) {
        ov25_02255914(param0->unk_60[8], 1);
    }
}

static void ov27_02256B80(SysTask *param0, void *param1)
{
    static void (*const v0[])(SysTask *, void *) = {
        ov27_02256BB0,
        ov27_02256BE8,
        ov27_02256C2C,
        ov27_02256C80,
        ov27_02256D00,
        ov27_02256D80,
        ov27_02256E1C
    };

    const UnkStruct_ov27_0225680C_1 *v1 = ov25_02255240(param1);

    SysTask_SetCallback(param0, v0[v1->unk_18]);
    v0[v1->unk_18](param0, param1);
}

static void ov27_02256BB0(SysTask *param0, void *param1)
{
    UnkStruct_ov27_0225680C *v0 = ov25_0225523C(param1);
    const UnkStruct_ov27_0225680C_1 *v1 = ov25_02255240(param1);

    ov25_02255914(v0->unk_60[8], 1);
    ov27_02256EC4(v0->unk_04, 0);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov27_02256A04(param1);
}

static void ov27_02256BE8(SysTask *param0, void *param1)
{
    UnkStruct_ov27_0225680C *v0 = ov25_0225523C(param1);

    ov25_02255914(v0->unk_60[8], 0);
    ov25_022558C4(v0->unk_60[8], 11);
    ov27_02256EC4(v0->unk_04, 1);

    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);

    PoketchSystem_PlaySoundEffect(1641);
    ov27_02256A04(param1);
}

static void ov27_02256C2C(SysTask *param0, void *param1)
{
    const UnkStruct_ov27_0225680C_1 *v0 = ov25_02255240(param1);
    UnkStruct_ov27_0225680C *v1 = ov25_0225523C(param1);

    if (v0->unk_18 != 2) {
        ov27_02256A04(param1);
        return;
    }

    switch (ov25_02255248(param1)) {
    case 0:
        ov25_022558C4(v1->unk_60[8], 12);
        ov27_02256EC4(v1->unk_04, 0);
        Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
        ov25_0225524C(param1);
        break;
    case 1:
        break;
    }
}

static void ov27_02256C80(SysTask *param0, void *param1)
{
    const UnkStruct_ov27_0225680C_1 *v0;
    UnkStruct_ov27_0225680C *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);
    v2 = ov25_02255244(param1);

    if (v0->unk_18 != 3) {
        ov27_02256A04(param1);
        return;
    }

    switch (ov25_02255248(param1)) {
    case 0:
        v2->unk_00 = 6;
        v2->unk_03 = 2;
        v2->unk_02 = 0;

        ov25_022558C4(v1->unk_60[8], 13);
        ov25_0225524C(param1);
    case 1:
        if (ov27_02256E90(v2, 6)) {
            PoketchSystem_PlaySoundEffect(1641);
            ov27_02256EC4(v1->unk_04, v2->unk_03);
            Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
        }
        break;
    }
}

static void ov27_02256D00(SysTask *param0, void *param1)
{
    const UnkStruct_ov27_0225680C_1 *v0;
    UnkStruct_ov27_0225680C *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);
    v2 = ov25_02255244(param1);

    if (v0->unk_18 != 4) {
        ov27_02256A04(param1);
        return;
    }

    switch (ov25_02255248(param1)) {
    case 0:
        v2->unk_00 = 3;
        v2->unk_03 = 2;
        v2->unk_02 = 0;

        ov25_022558C4(v1->unk_60[8], 14);
        ov25_0225524C(param1);
    case 1:
        if (ov27_02256E90(v2, 3)) {
            PoketchSystem_PlaySoundEffect(1641);
            ov27_02256EC4(v1->unk_04, v2->unk_03);
            Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
        }
        break;
    }
}

static void ov27_02256D80(SysTask *param0, void *param1)
{
    const UnkStruct_ov27_0225680C_1 *v0;
    UnkStruct_ov27_0225680C *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);
    v2 = ov25_02255244(param1);

    if (v0->unk_18 != 5) {
        ov27_02256A04(param1);
        return;
    }

    switch (ov25_02255248(param1)) {
    case 0:
        v2->unk_00 = 0;
        v2->unk_02 = 0;
        ov25_022558C4(v1->unk_60[8], 15);
        ov27_02256EC4(v1->unk_04, 5);
        Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
        PoketchSystem_PlaySoundEffect(1638);
        ov25_0225524C(param1);
    case 1:
        if (++(v2->unk_00) > 2) {
            v2->unk_00 = 0;
            v2->unk_02 ^= 1;
            v2->unk_03 = 5 + v2->unk_02;
            ov27_02256EC4(v1->unk_04, v2->unk_03);
            Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
        }
        break;
    }
}

static void ov27_02256E1C(SysTask *param0, void *param1)
{
    const UnkStruct_ov27_0225680C_1 *v0;
    UnkStruct_ov27_0225680C *v1;
    UnkStruct_ov27_02256E90 *v2;

    v0 = ov25_02255240(param1);
    v1 = ov25_0225523C(param1);
    v2 = ov25_02255244(param1);

    if (v0->unk_18 != 6) {
        ov27_02256A04(param1);
        return;
    }

    switch (ov25_02255248(param1)) {
    case 0:
        ov25_022558C4(v1->unk_60[8], 16);
        ov27_02256EC4(v1->unk_04, 6);
        Bg_CopyTilemapBufferToVRAM(v1->unk_04, 6);
        ov25_0225524C(param1);
        v2->unk_00 = 0;
    case 1:
        if (++(v2->unk_00) > 80) {
            ov27_02256A04(param1);
        }
        break;
    }
}

static BOOL ov27_02256E90(UnkStruct_ov27_02256E90 *param0, u32 param1)
{
    static const u8 v0[] = {
        2,
        3,
        4,
    };

    if (++(param0->unk_00) > param1) {
        param0->unk_00 = 0;

        if (++(param0->unk_02) >= NELEMS(v0)) {
            param0->unk_02 = 0;
        }

        param0->unk_03 = v0[param0->unk_02];
        return 1;
    }

    return 0;
}

static void ov27_02256EC4(BgConfig *param0, u32 param1)
{
    u16 *v0;
    u32 v1, v2;
    u16 v3;

    v0 = Bg_GetTilemapBuffer(param0, 6);
    v0 += ((9 * 32) + 9);
    v3 = 2 + param1 * 5;

    for (v2 = 0; v2 < 11; v2++) {
        for (v1 = 0; v1 < 5; v1++) {
            v0[v1] = ((0 << 1) | (v3 + v1));
            v0[5 * 2 - 1 - v1] = ((0 << 1) | (v3 + v1) | GX_SCRFMT_TEXT_HF_MASK);
        }

        v0 += 32;
        v3 += 37;
    }
}

static void ov27_02256F24(SysTask *param0, void *param1)
{
    UnkStruct_ov27_0225680C *v0 = ov25_0225523C(param1);
    u32 v1 = ov25_02255248(param1);

    switch (v1) {
    case 0:
        ov27_02256F7C(v0);
        ov25_0225524C(param1);
    case 1:
        ov25_022559B0(&(v0->unk_34));
        ov25_022559B0(&(v0->unk_48));
        Bg_FreeTilemapBuffer(v0->unk_04, 6);
        SysTask_Done(v0->unk_84);
        v0->unk_84 = NULL;
        ov27_02256A04(param1);
        break;
    }
}

static void ov27_02256F7C(UnkStruct_ov27_0225680C *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 9; v0++) {
        ov25_022558B0(param0->unk_5C, param0->unk_60[v0]);
    }
}
