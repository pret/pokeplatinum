#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D5434.h"

#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "easy3d_object.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_020218BC.h"
#include "overlay099/ov99_021D4134.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    s16 unk_06;
    s16 unk_08;
    u16 unk_0A[3];
} UnkStruct_ov99_021D5394;

static const UnkStruct_ov99_021D5434 Unk_ov99_021D5434[][2] = {
    {
        {0xE, 0x3AC, 0x65800, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000},
        {0xE, 0x618, 0x9B000, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000}
    },
    {
        {0xE, 0x1B8, 0x65800, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000},
        {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0}
    },
    {
        {0x10, 0x3AC, 0x65800, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000},
        {0xE, 0x618, 0x9B000, 0x1C800, -217088, 0x2B800, 0x7000, 0x47000}
    }
};

static const UnkStruct_ov99_021D5394 Unk_ov99_021D5394[] = {
    {0x26, 0x25, 0x30, 0x0, 0x0},
    {0x27, 0x25, 0x31, -32, -48},
    {0x28, 0x25, 0x32, -16, -30},
    {0x29, 0x25, 0x33, -42, -2},
    {0x2A, 0x25, 0x34, -8, -20},
    {0x2B, 0x25, 0x35, -50, -16},
    {0x2C, 0x25, 0x36, -40, -34},
    {0x2D, 0x25, 0x37, -16, -1},
    {0x2E, 0x25, 0x38, -44, -15},
    {0x2F, 0x25, 0x39, -30, -30}
};

static const UnkStruct_ov99_021D5394 Unk_ov99_021D52F4[] = {
    {0x3A, 0x25, 0x44, 0x0, 0x0},
    {0x3B, 0x25, 0x45, -32, -48},
    {0x3C, 0x25, 0x46, -16, -30},
    {0x3D, 0x25, 0x47, -42, -2},
    {0x3E, 0x25, 0x48, -8, -20},
    {0x3F, 0x25, 0x49, -50, -16},
    {0x40, 0x25, 0x4A, -40, -34},
    {0x41, 0x25, 0x4B, -16, -1},
    {0x42, 0x25, 0x4C, -44, -15},
    {0x43, 0x25, 0x4D, -30, -30}
};

static const UnkStruct_ov99_021D5394 Unk_ov99_021D5274[] = {
    {0x57, 0x56, 0x5B, 0x0, 0x0},
    {0x58, 0x56, 0x5C, 0x0, 0x0},
    {0x59, 0x56, 0x5D, 0x0, 0x0},
    {0x5A, 0x56, 0x5E, 0x0, 0x0}
};

static const UnkStruct_ov99_021D5394 Unk_ov99_021D52B4[] = {
    {0x5F, 0x56, 0x63, 0x0, 0x0},
    {0x60, 0x56, 0x64, 0x0, 0x0},
    {0x61, 0x56, 0x65, 0x0, 0x0},
    {0x62, 0x56, 0x66, 0x0, 0x0}
};

void ov99_021D4134 (UnkStruct_ov99_021D2CB0 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_F6C.unk_00[v0] = Unk_ov99_021D5434[param1][v0];
    }
}

void ov99_021D4170 (UnkStruct_ov99_021D2CB0 * param0)
{
    int v0, v1;
    UnkStruct_ov99_021D5434 * v2;

    for (v1 = 0; v1 < param0->unk_1104; v1++) {
        v2 = &param0->unk_F6C.unk_00[v1];
        GF_ASSERT(v2->unk_00 <= 16);

        for (v0 = 0; v0 < v2->unk_00; v0++) {
            sub_02017350(&param0->unk_6C[v1][v0], v2->unk_04 - v2->unk_08 * v0, v2->unk_0C - v2->unk_10 * v0, v2->unk_14 - v2->unk_18 * v0);
            sub_0201736C(&param0->unk_6C[v1][v0], FX32_ONE, FX32_ONE, FX32_ONE);
            sub_02017348(&param0->unk_6C[v1][v0], 1);
        }

        for ( ; v0 < 16; v0++) {
            sub_02017350(&param0->unk_6C[v1][v0], 0, (-64 * FX32_ONE), (-50 * FX32_ONE));
            sub_0201736C(&param0->unk_6C[v1][v0], FX32_ONE, FX32_ONE, FX32_ONE);
            sub_02017348(&param0->unk_6C[v1][v0], 0);
        }
    }
}

BOOL ov99_021D425C (UnkStruct_ov99_021D2CB0 * param0, s32 param1)
{
    fx32 v0, v1, v2;
    fx32 v3, v4, v5;
    int v6, v7;
    UnkStruct_ov99_021D5434 * v8;
    BOOL v9 = 0;

    for (v6 = 0; v6 < param0->unk_1104; v6++) {
        v8 = &param0->unk_F6C.unk_00[v6];
        v0 = v8->unk_08 * v8->unk_00 / v8->unk_02;
        v1 = v8->unk_10 * v8->unk_00 / v8->unk_02;
        v2 = v8->unk_18 * v8->unk_00 / v8->unk_02;

        for (v7 = 0; v7 < v8->unk_00; v7++) {
            sub_02017358(&param0->unk_6C[v6][v7], &v3, &v4, &v5);

            if (v3 + v0 >= v8->unk_04) {
                sub_02017350(&param0->unk_6C[v6][v7], v3 + v0 - v8->unk_08 * v8->unk_00, v4 + v1 - v8->unk_10 * v8->unk_00, v5 + v2 - v8->unk_18 * v8->unk_00);

                if ((param1 != -1) && (v6 == 0)) {
                    MI_CpuClear8(&param0->unk_6C[v6][v7].unk_00, sizeof(NNSG3dRenderObj));
                    NNS_G3dRenderObjInit(
                        &param0->unk_6C[v6][v7].unk_00, param0->unk_2C[param1].unk_08);
                }

                v9 = 1;
            } else {
                sub_02017350(&param0->unk_6C[v6][v7], v3 + v0, v4 + v1, v5 + v2);
            }

            sub_02017348(&param0->unk_6C[v6][v7], 1);
        }
    }

    return v9;
}

void ov99_021D439C (UnkStruct_ov99_021D2CB0 * param0, int param1, int param2, int param3)
{
    BGL * v0 = param0->unk_08;
    NNSG2dPaletteData * v1;
    void * v2;
    const UnkStruct_ov99_021D5394 * v3;

    GF_ASSERT(NELEMS(Unk_ov99_021D5394) == NELEMS(Unk_ov99_021D52F4));
    GF_ASSERT(NELEMS(Unk_ov99_021D5274) == NELEMS(Unk_ov99_021D52B4));

    switch (param3) {
    case 0:
        GF_ASSERT(NELEMS(Unk_ov99_021D5394) > param1);

        if (param0->unk_00->unk_00 == 0) {
            v3 = &Unk_ov99_021D5394[param1];
        } else {
            v3 = &Unk_ov99_021D52F4[param1];
        }
        break;
    case 1:
        GF_ASSERT(NELEMS(Unk_ov99_021D52F4) > param1);

        if (param0->unk_00->unk_00 == 0) {
            v3 = &Unk_ov99_021D5274[param1];
        } else {
            v3 = &Unk_ov99_021D52B4[param1];
        }
        break;
    }

    v2 = sub_020071EC(param0->unk_10F8, v3->unk_04, &v1, 75);

    DC_FlushRange(v1->pRawData, v1->szByte);
    GX_BeginLoadBGExtPltt();

    if (param2 == 3) {
        GX_LoadBGExtPltt(v1->pRawData, 0x6000, 0x2000);
    } else {
        GX_LoadBGExtPltt(v1->pRawData, 0x4000, 0x2000);
    }

    GX_EndLoadBGExtPltt();

    Heap_FreeToHeap(v2);
    sub_020038B0(param0->unk_0C, 0, 2, 0x0, 0, 1);
    sub_020038B0(param0->unk_0C, 1, 2, 0x0, 0, 1);
    sub_020070E8(param0->unk_10F8, v3->unk_00, param0->unk_08, param2, 0, 0, 0, 75);
    sub_0200710C(param0->unk_10F8, v3->unk_02, param0->unk_08, param2, 0, 0, 0, 75);
    sub_02019184(v0, param2, 0, v3->unk_06);
    sub_02019184(v0, param2, 3, v3->unk_08);
}

void ov99_021D44CC (UnkStruct_ov99_021D2CB0 * param0, CellActorData * param1)
{
    void * v0;
    u32 v1;
    NNSG2dImageProxy * v2;

    if (param0->unk_10F4 == NULL) {
        return;
    }

    if (param0->unk_1114.unk_04 == -1) {
        if (param0->unk_1114.unk_00 > 0) {
            param0->unk_1114.unk_00--;
        } else {
            v0 = G2_GetOBJCharPtr();
            v2 = SpriteActor_ImageProxy(param1->unk_00);

            if (param0->unk_00->unk_00 == 0) {
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2)], (void *)((u32)v0 + 0x1d * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2) + 0x20], (void *)((u32)v0 + 0x1e * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2) + 0x40], (void *)((u32)v0 + 0x25 * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2) + 0x60], (void *)((u32)v0 + 0x26 * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            } else {
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2)], (void *)((u32)v0 + 0x45 * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2) + 0x20], (void *)((u32)v0 + 0x46 * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2) + 0x40], (void *)((u32)v0 + 0x4d * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
                MI_CpuCopy32(&param0->unk_10F4[param0->unk_1114.unk_02 * ((0x20 * 8) / 2) + 0x60], (void *)((u32)v0 + 0x4e * 0x20 + v2->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), 0x20);
            }

            if (param0->unk_1114.unk_02 == 0) {
                if (param0->unk_1114.unk_06 % 3 == 0) {
                    if (LCRNG_Next() & 1) {
                        param0->unk_1114.unk_00 = LCRNG_Next() % 10;
                        param0->unk_1114.unk_06++;
                    } else {
                        param0->unk_1114.unk_00 = 40;
                    }
                } else {
                    param0->unk_1114.unk_00 = 40;
                    param0->unk_1114.unk_06++;
                }
            } else {
                param0->unk_1114.unk_00 = 1;
            }

            param0->unk_1114.unk_02 ^= 1;
        }
    }

    if (sub_0200D3B8(param1) == 0) {
        if (param0->unk_1114.unk_04 != -1) {
            param0->unk_1114.unk_04++;

            if ((param0->unk_1114.unk_04 > 16) && (LCRNG_Next() % 5 == 0)) {
                v1 = 1;
                param0->unk_1114.unk_04 = -1;
            } else {
                v1 = 0;
            }

            sub_0200D364(param1, v1);
        } else {
            param0->unk_1114.unk_04 = 0;
            sub_0200D364(param1, 0);
        }
    }
}
