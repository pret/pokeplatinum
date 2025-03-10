#include "overlay025/ov25_02255540.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

#include "graphics.h"
#include "heap.h"

struct ov25_LinkedElement_t {
    const NNSG2dCellDataBank *cellBank;
    const NNSG2dAnimBankData *animBack;
    NNSG2dCellAnimation cellAnim;
    struct ov25_LinkedElement_t *leftElem;
    struct ov25_LinkedElement_t *rightElem;
    NNSG2dFVec2 translation;
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
    NNSG2dOamManagerInstance *oamMngr;
    ov25_LinkedElement **unk_04;
    ov25_LinkedElement *lastElem;
    ov25_LinkedElement *unk_0C;
    u16 numObjs;
    u16 unk_12;
    GXOamAttr *oam;
    u32 heapID;
};

static void ov25_LoadObjs(ov25_LinkedElement **param0, ov25_LinkedElement *param1, u32 param2);
static void ov25_DissconectElem(ov25_LinkedElement *param0);
static ov25_LinkedElement *ov25_02255A04(UnkStruct_ov25_022555E8 *param0);
static void ov25_02255A1C(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1);
static void ov25_SortElemIntoList(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1);
static void ov25_RemoveElemFromList(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1);

UnkStruct_ov25_022555E8 *ov25_02255540(NNSG2dOamManagerInstance *oamMngr, u32 heapID)
{
    UnkStruct_ov25_022555E8 *v0;
    BOOL success = FALSE;

    do {
        v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov25_022555E8));

        if (v0 == NULL) {
            break;
        }

        v0->oam = NULL;
        v0->unk_0C = NULL;
        v0->unk_04 = NULL;
        v0->oamMngr = oamMngr;
        v0->heapID = heapID;
        v0->numObjs = NNS_G2dGetOamManagerOamCapacity(oamMngr);
        v0->oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * v0->numObjs);

        if (v0->oam == NULL) {
            break;
        }

        v0->unk_0C = Heap_AllocFromHeap(heapID, sizeof(ov25_LinkedElement) * v0->numObjs);

        if (v0->unk_0C == NULL) {
            break;
        }

        v0->unk_04 = Heap_AllocFromHeap(heapID, sizeof(ov25_LinkedElement *) * v0->numObjs);

        if (v0->unk_04 == NULL) {
            break;
        }

        ov25_LoadObjs(v0->unk_04, v0->unk_0C, v0->numObjs);

        v0->unk_12 = 0;
        v0->lastElem = NULL;

        success = TRUE;
    } while (FALSE);

    if (success == FALSE) {
        if (v0 != NULL) {
            if (v0->oam != NULL) {
                Heap_FreeToHeapExplicit(heapID, v0->oam);
            }

            if (v0->unk_0C != NULL) {
                Heap_FreeToHeapExplicit(heapID, v0->unk_0C);
            }

            if (v0->unk_04 != NULL) {
                Heap_FreeToHeapExplicit(heapID, v0->unk_04);
            }

            Heap_FreeToHeapExplicit(heapID, v0);
        }

        return NULL;
    }

    return v0;
}

void ov25_FreeOV25(UnkStruct_ov25_022555E8 *param0)
{
    if (param0) {
        if (param0->oam) {
            Heap_FreeToHeap(param0->oam);
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
        ov25_LinkedElement *v0 = param0->lastElem;
        GXOamAttr *oam = param0->oam;
        s32 numObjs = param0->numObjs;
        u32 v3;

        while (v0 != NULL) {
            NNS_G2dTickCellAnimation(&v0->cellAnim, FX32_ONE * 2);

            if (v0->unk_8A == 0) {
                const NNSG2dSRTControl *srtCtrl = &(v0->cellAnim.srtCtrl);
                NNSG2dFVec2 translation;

                translation.x = v0->translation.x + (fx32)(srtCtrl->srtData.trans.x << FX32_SHIFT);
                translation.y = v0->translation.y + (fx32)(srtCtrl->srtData.trans.y << FX32_SHIFT);

                if (v0->unk_8B == 0) {
                    v3 = NNS_G2dMakeCellToOams(oam, numObjs, NNS_G2dGetCellAnimationCurrentCell(&v0->cellAnim), NULL, &(translation), 0, 0);
                } else {
                    u16 v6;

                    MTX_Identity22(v0->unk_70);

                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_ROTATE) {
                        u16 v7 = srtCtrl->srtData.rotZ + v0->unk_90;
                        MTX_Rot22(v0->unk_70, FX_SinIdx(v7), FX_CosIdx(v7));
                    } else if (v0->unk_90) {
                        MTX_Rot22(v0->unk_70, FX_SinIdx(v0->unk_90), FX_CosIdx(v0->unk_90));
                    }

                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_SCALE) {
                        MTX_ScaleApply22(v0->unk_70, v0->unk_70, FX_Inv(srtCtrl->srtData.scale.x), FX_Inv(srtCtrl->srtData.scale.y));
                    }

                    v6 = NNS_G2dEntryOamManagerAffine(param0->oamMngr, v0->unk_70);
                    v3 = NNS_G2dMakeCellToOams(oam, numObjs, NNS_G2dGetCellAnimationCurrentCell(&v0->cellAnim), v0->unk_70, &(translation), v6, 1);
                }

                numObjs -= v3;

                while (v3--) {
                    oam->priority = v0->unk_84_val1_unk_02;
                    oam->cParam += v0->unk_88;
                    oam->charNo += v0->unk_8C;
                    oam->flipH ^= v0->unk_8E;
                    oam->flipV ^= v0->unk_8F;
                    oam->mosaic ^= v0->unk_92;
                    oam++;
                }
            }

            v0 = v0->leftElem;
        }

        if (oam > param0->oam) {
            NNS_G2dEntryOamManagerOam(param0->oamMngr, param0->oam, oam - param0->oam);
        }
    }
}

ov25_LinkedElement *ov25_02255810(UnkStruct_ov25_022555E8 *param0, const UnkStruct_ov25_02255810 *param1, const UnkStruct_ov25_02255958 *param2)
{
    ov25_LinkedElement *v0 = ov25_02255A04(param0);

    if (v0 != NULL) {
        v0->unk_84_val1_unk_02 = param1->unk_0B;
        v0->unk_84_val1_unk_00 = param1->unk_0C;

        ov25_SortElemIntoList(param0, v0);

        v0->cellBank = param2->cellBank;
        v0->animBack = param2->animBank;

        NNS_G2dInitCellAnimation(&(v0->cellAnim), NNS_G2dGetAnimSequenceByIdx(v0->animBack, param1->unk_08), v0->cellBank);

        v0->translation = param1->unk_00;
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

void ov25_022558B0(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1)
{
    ov25_RemoveElemFromList(param0, param1);
    ov25_02255A1C(param0, param1);
}

void ov25_InitAnimation(ov25_LinkedElement *param0, u32 animIDX)
{
    NNS_G2dInitCellAnimation(&(param0->cellAnim), NNS_G2dGetAnimSequenceByIdx(param0->animBack, animIDX), param0->cellBank);
}

BOOL ov25_AnimNotPlaying(ov25_LinkedElement *param0)
{
    NNSG2dAnimController *animCtrl = NNS_G2dGetCellAnimationAnimCtrl(&(param0->cellAnim));
    return NNS_G2dIsAnimCtrlActive(animCtrl) == FALSE;
}

void ov25_addTranslation(ov25_LinkedElement *param0, fx32 param1, fx32 param2)
{
    param0->translation.x += param1;
    param0->translation.y += param2;
}

void ov25_SetTranslation(ov25_LinkedElement *param0, fx32 param1, fx32 param2)
{
    param0->translation.x = param1;
    param0->translation.y = param2;
}

void ov25_GetTranslation(const ov25_LinkedElement *param0, fx32 *param1, fx32 *param2)
{
    *param1 = param0->translation.x;
    *param2 = param0->translation.y;
}

void ov25_02255914(ov25_LinkedElement *param0, BOOL param1)
{
    param0->unk_8A = param1;
}

void ov25_0225591C(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1, u32 param2)
{
    ov25_RemoveElemFromList(param0, param1);
    param1->unk_84_val1_unk_00 = param2;
    ov25_SortElemIntoList(param0, param1);
}

void ov25_02255938(ov25_LinkedElement *param0, u32 param1)
{
    param0->unk_88 = param1;
}

void ov25_02255940(ov25_LinkedElement *param0, u32 param1)
{
    param0->unk_8C = param1;
}

void ov25_02255948(ov25_LinkedElement *param0, BOOL param1)
{
    param0->unk_92 = param1;
}

void ov25_02255950(ov25_LinkedElement *param0, u16 param1)
{
    param0->unk_90 = param1;
}

BOOL ov25_02255958(UnkStruct_ov25_02255958 *param0, u32 narcId, u32 memberId, u32 memberId2, enum HeapId heapId)
{
    param0->unk_10 = heapId;
    param0->unk_00 = LoadCompressedMemberFromNARC(narcId, memberId, heapId);
    param0->unk_04 = LoadCompressedMemberFromNARC(narcId, memberId2, heapId);

    if ((param0->unk_00 != NULL) && (param0->unk_04 != NULL)) {
        if (!NNS_G2dGetUnpackedCellBank(param0->unk_00, &(param0->cellBank))) {
            return 0;
        }

        if (!NNS_G2dGetUnpackedMCAnimBank(param0->unk_04, &(param0->animBank))) {
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

static void ov25_LoadObjs(ov25_LinkedElement **param0, ov25_LinkedElement *param1, u32 numObjs)
{
    while (numObjs--) {
        *param0 = param1;
        ov25_DissconectElem(param1);
        param1++;
        param0++;
    }
}

static void ov25_DissconectElem(ov25_LinkedElement *param0)
{
    param0->leftElem = NULL;
    param0->rightElem = NULL;
}

static ov25_LinkedElement *ov25_02255A04(UnkStruct_ov25_022555E8 *param0)
{
    if (param0->unk_12 < param0->numObjs) {
        return param0->unk_04[param0->unk_12++];
    }

    return NULL;
}

static void ov25_02255A1C(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1)
{
    if (param0->unk_12 == 0) {
        return;
    }

    ov25_DissconectElem(param1);

    param0->unk_12--;
    param0->unk_04[param0->unk_12] = param1;
}

static void ov25_SortElemIntoList(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *newElem)
{
    if (param0->lastElem == NULL) {
        param0->lastElem = newElem;
        newElem->leftElem = NULL;
        newElem->rightElem = NULL;
    } else {
        ov25_LinkedElement *prevElem = param0->lastElem;

        while (TRUE) {
            if (newElem->unk_84_val2 < prevElem->unk_84_val2) {
                if (prevElem == param0->lastElem) {
                    param0->lastElem = newElem;
                }

                newElem->rightElem = prevElem->rightElem;

                if (newElem->rightElem) {
                    newElem->rightElem->leftElem = newElem;
                }

                newElem->leftElem = prevElem;
                prevElem->rightElem = newElem;

                break;
            }

            if (prevElem->leftElem == NULL) {
                prevElem->leftElem = newElem;
                newElem->rightElem = prevElem;
                newElem->leftElem = NULL;

                break;
            } else {
                prevElem = prevElem->leftElem;
            }
        }
    }
}

static void ov25_RemoveElemFromList(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *elem)
{
    if (elem->rightElem != NULL) {
        if (elem->leftElem != NULL) {
            elem->rightElem->leftElem = elem->leftElem;
            elem->leftElem->rightElem = elem->rightElem;
        } else {
            elem->rightElem->leftElem = NULL;
        }
    } else {
        if (elem->leftElem != NULL) {
            elem->leftElem->rightElem = NULL;
            param0->lastElem = elem->leftElem;
        } else {
            param0->lastElem = NULL;
        }
    }
}
