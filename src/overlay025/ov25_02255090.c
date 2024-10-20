#include "overlay025/ov25_02255090.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "overlay025/ov25_02254560.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "narc.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"

struct UnkStruct_ov25_02255224_t {
    u32 unk_00;
    u32 unk_04;
    void *unk_08;
    void *unk_0C;
    const void *unk_10;
    SysTask *unk_14;
};

static BOOL ov25_022550B0(u32 *param0, u32 param1);
static void ov25_022550F0(u32 *param0, u32 param1);

void ov25_02255090(u32 *param0, u32 param1)
{
    u32 v0;

    param0[0] = param1;
    param0[1] = 0x12345678;

    for (v0 = 0; v0 < param1; v0++) {
        param0[2 + v0] = 0xffffffff;
    }
}

static BOOL ov25_022550B0(u32 *param0, u32 param1)
{
    u32 v0;

    GF_ASSERT(param0[1] == 0x12345678);

    for (v0 = 0; v0 < param0[0]; v0++) {
        if (param0[2 + v0] == 0xffffffff) {
            param0[2 + v0] = param1;
            return 1;
        }
    }

    return 0;
}

static void ov25_022550F0(u32 *param0, u32 param1)
{
    u32 v0;

    GF_ASSERT(param0[1] == 0x12345678);

    for (v0 = 0; v0 < param0[0]; v0++) {
        if (param0[2 + v0] == param1) {
            param0[2 + v0] = 0xffffffff;
            return;
        }
    }

    GF_ASSERT(0);
}

BOOL ov25_02255130(u32 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param0[0]; v0++) {
        if (param0[2 + v0] == param1) {
            return 0;
        }
    }

    return 1;
}

BOOL ov25_02255154(u32 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < param0[0]; v0++) {
        if (param0[2 + v0] != 0xffffffff) {
            return 0;
        }
    }

    return 1;
}

void ov25_0225517C(const UnkStruct_ov25_0225517C *param0, u32 param1, void *param2, const void *param3, u32 *param4, u32 param5, u32 param6)
{
    u32 v0;

    for (v0 = 0; param0[v0].unk_00 != 0xffffffff; v0++) {
        if (param0[v0].unk_00 == param1) {
            UnkStruct_ov25_02255224 *v1;
            u32 v2;

            v2 = sizeof(UnkStruct_ov25_02255224) + param0[v0].unk_08;
            v1 = Heap_AllocFromHeap(param6, v2);

            if (v1 != NULL) {
                if (param0[v0].unk_08 != 0) {
                    v1->unk_0C = ((u8 *)v1) + sizeof(UnkStruct_ov25_02255224);
                } else {
                    v1->unk_0C = NULL;
                }

                if (ov25_022550B0(param4, param1)) {
                    v1->unk_08 = param2;
                    v1->unk_04 = 0;
                    v1->unk_00 = param1;
                    v1->unk_10 = param3;
                    v1->unk_14 = SysTask_Start(param0[v0].unk_04, v1, param5);

                    if (v1->unk_14) {
                        param0[v0].unk_04(v1->unk_14, v1);
                    }
                } else {
                    Heap_FreeToHeap(v1);
                }

                return;
            } else {
                GF_ASSERT(0);
                break;
            }
        }
    }

    GF_ASSERT(0);
}

void ov25_02255224(u32 *param0, UnkStruct_ov25_02255224 *param1)
{
    ov25_022550F0(param0, param1->unk_00);

    SysTask_Done(param1->unk_14);
    Heap_FreeToHeap(param1);
}

void *ov25_0225523C(UnkStruct_ov25_02255224 *param0)
{
    return param0->unk_08;
}

const void *ov25_02255240(UnkStruct_ov25_02255224 *param0)
{
    return param0->unk_10;
}

void *ov25_02255244(UnkStruct_ov25_02255224 *param0)
{
    return param0->unk_0C;
}

u32 ov25_02255248(UnkStruct_ov25_02255224 *param0)
{
    return param0->unk_04;
}

void ov25_0225524C(UnkStruct_ov25_02255224 *param0)
{
    param0->unk_04++;
}

void ov25_02255254(UnkStruct_ov25_02255224 *param0, u32 param1)
{
    param0->unk_04 = param1;
}

void ov25_02255258(u16 *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    param6 <<= 12;
    param0 += ((param3 * param2) + param1);
    param0[0] = param6 | param4;
    param0[1] = param6 | (param4 + 1);
    param0[param3] = param6 | (param4 + param5);
    param0[param3 + 1] = param6 | (param4 + param5 + 1);
}

void ov25_02255290(u16 *param0, u32 param1)
{
    u16 *v0;

    v0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20);

    if (v0) {
        static const u8 v1[] = {
            1, 8, 15, 4
        };
        u32 v2, v3, v4, v5, v6;

        ov25_02254728(v0);

        for (v2 = 0; v2 < param1; v2++) {
            v3 = (param0[v2] & GX_RGB_R_MASK) >> GX_RGB_R_SHIFT;
            v4 = (param0[v2] & GX_RGB_G_MASK) >> GX_RGB_G_SHIFT;
            v5 = (param0[v2] & GX_RGB_B_MASK) >> GX_RGB_B_SHIFT;
            v6 = ((v3 * 299) + (v4 * 587) + (v5 * 114)) / 1000;
            v6 >>= 3;

            if (v6 > 3) {
                v6 = 3;
            }

            param0[v2] = v0[v1[v6]];
        }

        Heap_FreeToHeap(v0);
    }
}

void ov25_02255308(u32 param0, u32 param1)
{
    u16 *v0;

    v0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20);

    if (v0) {
        u16 *v1 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20);

        ov25_02254728(v0);

        if (v1) {
            int v2;

            for (v2 = 0; v2 < 16; v2++) {
                v1[v2] = v0[param0];
            }

            DC_FlushRange(v1, 0x20);
            GXS_LoadOBJPltt(v1, param1 * 0x20, 0x20);
            Heap_FreeToHeap(v1);
        }

        Heap_FreeToHeap(v0);
    }
}

void ov25_02255360(u32 param0)
{
    void *v0;
    NNSG2dPaletteData *v1;

    v0 = sub_02006F88(19, PokeIconPalettesFileIndex(), &v1, 8);

    if (v0) {
        ov25_02255290(v1->pRawData, 4 * 0x10);
        DC_FlushRange(v1->pRawData, 4 * 0x20);
        GXS_LoadOBJPltt(v1->pRawData, param0 * 0x20, 4 * 0x20);
        Heap_FreeToHeap(v0);
    }
}

void ov25_022553A0(u32 param0, const u32 *param1, u32 param2, BOOL param3)
{
    static const u16 v0[2] = { 512, 1024 };
    static const u16 v1[2] = { 640, 1152 };
    u8 *v2;

    v2 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, v1[param3]);

    if (v2) {
        NARC *v3 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, 8);

        if (v3) {
            NNSG2dCharacterData *v4;
            u32 v5;

            for (v5 = 0; v5 < param2; v5++) {
                NARC_ReadFromMember(v3, param1[v5], 0, v1[param3], v2);
                NNS_G2dGetUnpackedCharacterData(v2, &v4);
                DC_FlushRange(v4->pRawData, v0[param3]);
                GXS_LoadOBJ(v4->pRawData, (param0 * 0x20) + (v0[param3] * v5), v0[param3]);
            }

            NARC_dtor(v3);
        }

        Heap_FreeToHeap(v2);
    }
}

void ov25_02255440(BgConfig *param0, u32 param1, u32 param2)
{
    u16 v0[4];
    u32 v1;

    {
        u32 v2 = ((1 / 4) * 16) + ((1 & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    sub_020198C0(param0, param2, v0, 9 + 0, 11, 2, 2);

    {
        u32 v2 = ((2 / 4) * 16) + ((2 & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    sub_020198C0(param0, param2, v0, 9 + 2, 11, 2, 2);

    {
        u32 v2 = ((3 / 4) * 16) + ((3 & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    sub_020198C0(param0, param2, v0, 9 + 4, 11, 2, 2);

    v1 = param1 / 10;
    param1 -= (v1 * 10);
    v1 += 4;
    param1 += 4;

    {
        u32 v2 = (((v1) / 4) * 16) + (((v1) & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    sub_020198C0(param0, param2, v0, 9 + 6, 11, 2, 2);

    {
        u32 v2 = (((param1) / 4) * 16) + (((param1) & 3) * 2);
        (v0)[0] = v2;
        (v0)[1] = v2 + 1;
        (v0)[2] = v2 + 8;
        (v0)[3] = v2 + 9;
    }

    sub_020198C0(param0, param2, v0, 9 + 8, 11, 2, 2);
}
