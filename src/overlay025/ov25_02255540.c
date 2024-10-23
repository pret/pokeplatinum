#include "overlay025/ov25_02255540.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

#include "graphics.h"
#include "heap.h"

struct UnkStruct_ov25_022558C4_t {
    const NNSG2dCellDataBank *unk_00;
    const NNSG2dAnimBankData *unk_04;
    NNSG2dCellAnimation unk_08;
    struct UnkStruct_ov25_022558C4_t *unk_60;
    struct UnkStruct_ov25_022558C4_t *unk_64;
    NNSG2dFVec2 unk_68;
    MtxFx22 *unk_70;
    MtxFx22 unk_74;
    union {
        struct {
            u16 unk_84_val1_unk_00;
            u16 unk_84_val1_unk_02;
        };
        u32 unk_84_val2;
    };
    u16 unk_88;
    u8 unk_8A;
    u8 unk_8B;
    u16 unk_8C;
    u8 unk_8E;
    u8 unk_8F;
    u16 unk_90;
    u8 unk_92;
};

struct UnkStruct_ov25_022555E8_t {
    NNSG2dOamManagerInstance *unk_00;
    UnkStruct_ov25_022558C4 **unk_04;
    UnkStruct_ov25_022558C4 *unk_08;
    UnkStruct_ov25_022558C4 *unk_0C;
    u16 unk_10;
    u16 unk_12;
    GXOamAttr *unk_14;
    u32 unk_18;
};

static void ov25_022559D8(UnkStruct_ov25_022558C4 **param0, UnkStruct_ov25_022558C4 *param1, u32 param2);
static void ov25_022559FC(UnkStruct_ov25_022558C4 *param0);
static UnkStruct_ov25_022558C4 *ov25_02255A04(UnkStruct_ov25_022555E8 *param0);
static void ov25_02255A1C(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1);
static void ov25_02255A40(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1);
static void ov25_02255A98(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1);

UnkStruct_ov25_022555E8 *ov25_02255540(NNSG2dOamManagerInstance *param0, u32 param1)
{
    UnkStruct_ov25_022555E8 *v0;
    BOOL v1 = 0;

    do {
        v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov25_022555E8));

        if (v0 == NULL) {
            break;
        }

        v0->unk_14 = NULL;
        v0->unk_0C = NULL;
        v0->unk_04 = NULL;
        v0->unk_00 = param0;
        v0->unk_18 = param1;
        v0->unk_10 = NNS_G2dGetOamManagerOamCapacity(param0);
        v0->unk_14 = Heap_AllocFromHeap(param1, sizeof(GXOamAttr) * v0->unk_10);

        if (v0->unk_14 == NULL) {
            break;
        }

        v0->unk_0C = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov25_022558C4) * v0->unk_10);

        if (v0->unk_0C == NULL) {
            break;
        }

        v0->unk_04 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov25_022558C4 *) * v0->unk_10);

        if (v0->unk_04 == NULL) {
            break;
        }

        ov25_022559D8(v0->unk_04, v0->unk_0C, v0->unk_10);

        v0->unk_12 = 0;
        v0->unk_08 = NULL;

        v1 = 1;
    } while (0);

    if (v1 == 0) {
        if (v0 != NULL) {
            if (v0->unk_14 != NULL) {
                Heap_FreeToHeapExplicit(param1, v0->unk_14);
            }

            if (v0->unk_0C != NULL) {
                Heap_FreeToHeapExplicit(param1, v0->unk_0C);
            }

            if (v0->unk_04 != NULL) {
                Heap_FreeToHeapExplicit(param1, v0->unk_04);
            }

            Heap_FreeToHeapExplicit(param1, v0);
        }

        return NULL;
    }

    return v0;
}

void ov25_022555E8(UnkStruct_ov25_022555E8 *param0)
{
    if (param0) {
        if (param0->unk_14) {
            Heap_FreeToHeap(param0->unk_14);
        }

        if (param0->unk_0C) {
            Heap_FreeToHeap(param0->unk_0C);
        }

        if (param0->unk_04) {
            Heap_FreeToHeap(param0->unk_04);
        }

        Heap_FreeToHeap(param0);
    }
}

void ov25_02255614(UnkStruct_ov25_022555E8 *param0)
{
    if (param0->unk_12) {
        UnkStruct_ov25_022558C4 *v0 = param0->unk_08;
        GXOamAttr *v1 = param0->unk_14;
        s32 v2 = param0->unk_10;
        u32 v3;

        while (v0 != NULL) {
            NNS_G2dTickCellAnimation(&v0->unk_08, FX32_ONE * 2);

            if (v0->unk_8A == 0) {
                const NNSG2dSRTControl *v4 = &(v0->unk_08.srtCtrl);
                NNSG2dFVec2 v5;

                v5.x = v0->unk_68.x + (fx32)(v4->srtData.trans.x << FX32_SHIFT);
                v5.y = v0->unk_68.y + (fx32)(v4->srtData.trans.y << FX32_SHIFT);

                if (v0->unk_8B == 0) {
                    v3 = NNS_G2dMakeCellToOams(
                        v1, v2, NNS_G2dGetCellAnimationCurrentCell(&v0->unk_08), NULL, &(v5), 0, 0);
                } else {
                    u16 v6;

                    MTX_Identity22(v0->unk_70);

                    if (v4->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_ROTATE) {
                        u16 v7 = v4->srtData.rotZ + v0->unk_90;
                        MTX_Rot22(v0->unk_70, FX_SinIdx(v7), FX_CosIdx(v7));
                    } else if (v0->unk_90) {
                        MTX_Rot22(v0->unk_70, FX_SinIdx(v0->unk_90), FX_CosIdx(v0->unk_90));
                    }

                    if (v4->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_SCALE) {
                        MTX_ScaleApply22(v0->unk_70, v0->unk_70, FX_Inv(v4->srtData.scale.x), FX_Inv(v4->srtData.scale.y));
                    }

                    v6 = NNS_G2dEntryOamManagerAffine(param0->unk_00, v0->unk_70);
                    v3 = NNS_G2dMakeCellToOams(v1, v2, NNS_G2dGetCellAnimationCurrentCell(&v0->unk_08), v0->unk_70, &(v5), v6, 1);
                }

                v2 -= v3;

                while (v3--) {
                    v1->priority = v0->unk_84_val1_unk_02;
                    v1->cParam += v0->unk_88;
                    v1->charNo += v0->unk_8C;
                    v1->flipH ^= v0->unk_8E;
                    v1->flipV ^= v0->unk_8F;
                    v1->mosaic ^= v0->unk_92;
                    v1++;
                }
            }

            v0 = v0->unk_60;
        }

        if (v1 > param0->unk_14) {
            NNS_G2dEntryOamManagerOam(param0->unk_00, param0->unk_14, v1 - param0->unk_14);
        }
    }
}

UnkStruct_ov25_022558C4 *ov25_02255810(UnkStruct_ov25_022555E8 *param0, const UnkStruct_ov25_02255810 *param1, const UnkStruct_ov25_02255958 *param2)
{
    UnkStruct_ov25_022558C4 *v0 = ov25_02255A04(param0);

    if (v0 != NULL) {
        v0->unk_84_val1_unk_02 = param1->unk_0B;
        v0->unk_84_val1_unk_00 = param1->unk_0C;

        ov25_02255A40(param0, v0);

        v0->unk_00 = param2->unk_08;
        v0->unk_04 = param2->unk_0C;

        NNS_G2dInitCellAnimation(&(v0->unk_08), NNS_G2dGetAnimSequenceByIdx(v0->unk_04, param1->unk_08), v0->unk_00);

        v0->unk_68 = param1->unk_00;
        v0->unk_88 = 0;
        v0->unk_8C = 0;
        v0->unk_8E = ((param1->unk_0A & 1) != 0);
        v0->unk_8F = ((param1->unk_0A & 2) != 0);
        v0->unk_92 = 0;
        v0->unk_90 = 0;
        v0->unk_70 = &(v0->unk_74);
        v0->unk_8B = param1->unk_0D;
        v0->unk_8A = 0;
    }

    return v0;
}

void ov25_022558B0(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1)
{
    ov25_02255A98(param0, param1);
    ov25_02255A1C(param0, param1);
}

void ov25_022558C4(UnkStruct_ov25_022558C4 *param0, u32 param1)
{
    NNS_G2dInitCellAnimation(&(param0->unk_08), NNS_G2dGetAnimSequenceByIdx(param0->unk_04, param1), param0->unk_00);
}

BOOL ov25_022558E0(UnkStruct_ov25_022558C4 *param0)
{
    NNSG2dAnimController *v0 = NNS_G2dGetCellAnimationAnimCtrl(&(param0->unk_08));
    return NNS_G2dIsAnimCtrlActive(v0) == 0;
}

void ov25_022558F0(UnkStruct_ov25_022558C4 *param0, fx32 param1, fx32 param2)
{
    param0->unk_68.x += param1;
    param0->unk_68.y += param2;
}

void ov25_02255900(UnkStruct_ov25_022558C4 *param0, fx32 param1, fx32 param2)
{
    param0->unk_68.x = param1;
    param0->unk_68.y = param2;
}

void ov25_02255908(const UnkStruct_ov25_022558C4 *param0, fx32 *param1, fx32 *param2)
{
    *param1 = param0->unk_68.x;
    *param2 = param0->unk_68.y;
}

void ov25_02255914(UnkStruct_ov25_022558C4 *param0, BOOL param1)
{
    param0->unk_8A = param1;
}

void ov25_0225591C(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1, u32 param2)
{
    ov25_02255A98(param0, param1);
    param1->unk_84_val1_unk_00 = param2;
    ov25_02255A40(param0, param1);
}

void ov25_02255938(UnkStruct_ov25_022558C4 *param0, u32 param1)
{
    param0->unk_88 = param1;
}

void ov25_02255940(UnkStruct_ov25_022558C4 *param0, u32 param1)
{
    param0->unk_8C = param1;
}

void ov25_02255948(UnkStruct_ov25_022558C4 *param0, BOOL param1)
{
    param0->unk_92 = param1;
}

void ov25_02255950(UnkStruct_ov25_022558C4 *param0, u16 param1)
{
    param0->unk_90 = param1;
}

BOOL ov25_02255958(UnkStruct_ov25_02255958 *param0, u32 param1, u32 param2, u32 param3, int param4)
{
    param0->unk_10 = param4;
    param0->unk_00 = LoadCompressedMemberFromNARC(param1, param2, param4);
    param0->unk_04 = LoadCompressedMemberFromNARC(param1, param3, param4);

    if ((param0->unk_00 != NULL) && (param0->unk_04 != NULL)) {
        if (!NNS_G2dGetUnpackedCellBank(param0->unk_00, &(param0->unk_08))) {
            return 0;
        }

        if (!NNS_G2dGetUnpackedMCAnimBank(param0->unk_04, &(param0->unk_0C))) {
            return 0;
        }
    }

    return 1;
}

void ov25_022559B0(UnkStruct_ov25_02255958 *param0)
{
    if (param0->unk_00 != NULL) {
        Heap_FreeToHeapExplicit(param0->unk_10, param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_04 != NULL) {
        Heap_FreeToHeapExplicit(param0->unk_10, param0->unk_04);
        param0->unk_04 = NULL;
    }
}

static void ov25_022559D8(UnkStruct_ov25_022558C4 **param0, UnkStruct_ov25_022558C4 *param1, u32 param2)
{
    while (param2--) {
        *param0 = param1;
        ov25_022559FC(param1);
        param1++;
        param0++;
    }
}

static void ov25_022559FC(UnkStruct_ov25_022558C4 *param0)
{
    param0->unk_60 = NULL;
    param0->unk_64 = NULL;
}

static UnkStruct_ov25_022558C4 *ov25_02255A04(UnkStruct_ov25_022555E8 *param0)
{
    if (param0->unk_12 < param0->unk_10) {
        return param0->unk_04[param0->unk_12++];
    }

    return NULL;
}

static void ov25_02255A1C(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1)
{
    if (param0->unk_12 == 0) {
        return;
    }

    ov25_022559FC(param1);

    param0->unk_12--;
    param0->unk_04[param0->unk_12] = param1;
}

static void ov25_02255A40(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1)
{
    if (param0->unk_08 == NULL) {
        param0->unk_08 = param1;
        param1->unk_60 = NULL;
        param1->unk_64 = NULL;
    } else {
        UnkStruct_ov25_022558C4 *v0 = param0->unk_08;

        while (TRUE) {
            if (param1->unk_84_val2 < v0->unk_84_val2) {
                if (v0 == param0->unk_08) {
                    param0->unk_08 = param1;
                }

                param1->unk_64 = v0->unk_64;

                if (param1->unk_64) {
                    param1->unk_64->unk_60 = param1;
                }

                param1->unk_60 = v0;
                v0->unk_64 = param1;

                break;
            }

            if (v0->unk_60 == NULL) {
                v0->unk_60 = param1;
                param1->unk_64 = v0;
                param1->unk_60 = NULL;

                break;
            } else {
                v0 = v0->unk_60;
            }
        }
    }
}

static void ov25_02255A98(UnkStruct_ov25_022555E8 *param0, UnkStruct_ov25_022558C4 *param1)
{
    if (param1->unk_64 != NULL) {
        if (param1->unk_60 != NULL) {
            param1->unk_64->unk_60 = param1->unk_60;
            param1->unk_60->unk_64 = param1->unk_64;
        } else {
            param1->unk_64->unk_60 = NULL;
        }
    } else {
        if (param1->unk_60 != NULL) {
            param1->unk_60->unk_64 = NULL;
            param0->unk_08 = param1->unk_60;
        } else {
            param0->unk_08 = NULL;
        }
    }
}
