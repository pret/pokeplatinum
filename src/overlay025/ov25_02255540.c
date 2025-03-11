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
    MtxFx22 *affineTransformation;
    MtxFx22 unk_74;
    union {
        struct {
            u16 unk_84_val1_unk_00;
            u16 oamPriority;
        };
        u32 unk_84_val2;
    };
    u16 cParam;
    u8 applyAffineTransformation;
    u8 unk_8B;
    u16 charNo;
    u8 flipH;
    u8 flipV;
    u16 rotZ;
    u8 mosaic;
};

struct UnkStruct_ov25_022555E8_t {
    NNSG2dOamManagerInstance *oamMngr;
    ov25_LinkedElement **elemPointerArray;
    ov25_LinkedElement *lastElem;
    ov25_LinkedElement *elemArray;
    u16 numObjs;
    u16 nextUnusedElemIdx;
    GXOamAttr *oam;
    u32 heapID;
};

static void ov25_PopulatePointerArray(ov25_LinkedElement **param0, ov25_LinkedElement *param1, u32 param2);
static void ov25_DissconectElem(ov25_LinkedElement *param0);
static ov25_LinkedElement *ov25_GetNextUnusedElemPointer(UnkStruct_ov25_022555E8 *param0);
static void ov25_MarkElemPointerUnused(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1);
static void ov25_SortElemIntoList(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1);
static void ov25_RemoveElemFromList(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1);

UnkStruct_ov25_022555E8 *ov25_SetupDataStructure(NNSG2dOamManagerInstance *oamMngr, u32 heapID)
{
    UnkStruct_ov25_022555E8 *v0;
    BOOL success = FALSE;

    do {
        v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov25_022555E8));

        if (v0 == NULL) {
            break;
        }

        v0->oam = NULL;
        v0->elemArray = NULL;
        v0->elemPointerArray = NULL;
        v0->oamMngr = oamMngr;
        v0->heapID = heapID;
        v0->numObjs = NNS_G2dGetOamManagerOamCapacity(oamMngr);
        v0->oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * v0->numObjs);

        if (v0->oam == NULL) {
            break;
        }

        v0->elemArray = Heap_AllocFromHeap(heapID, sizeof(ov25_LinkedElement) * v0->numObjs);

        if (v0->elemArray == NULL) {
            break;
        }

        v0->elemPointerArray = Heap_AllocFromHeap(heapID, sizeof(ov25_LinkedElement *) * v0->numObjs);

        if (v0->elemPointerArray == NULL) {
            break;
        }

        ov25_PopulatePointerArray(v0->elemPointerArray, v0->elemArray, v0->numObjs);

        v0->nextUnusedElemIdx = 0;
        v0->lastElem = NULL;

        success = TRUE;
    } while (FALSE);

    if (success == FALSE) {
        if (v0 != NULL) {
            if (v0->oam != NULL) {
                Heap_FreeToHeapExplicit(heapID, v0->oam);
            }

            if (v0->elemArray != NULL) {
                Heap_FreeToHeapExplicit(heapID, v0->elemArray);
            }

            if (v0->elemPointerArray != NULL) {
                Heap_FreeToHeapExplicit(heapID, v0->elemPointerArray);
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

        if (param0->elemArray) {
            Heap_FreeToHeap(param0->elemArray);
        }

        if (param0->elemPointerArray) {
            Heap_FreeToHeap(param0->elemPointerArray);
        }

        Heap_FreeToHeap(param0);
    }
}

void ov25_MainFunc(UnkStruct_ov25_022555E8 *param0)
{
    if (param0->nextUnusedElemIdx) {
        ov25_LinkedElement *elem = param0->lastElem;
        GXOamAttr *oam = param0->oam;
        s32 numObjs = param0->numObjs;
        u32 numObjsUsed;

        while (elem != NULL) {
            NNS_G2dTickCellAnimation(&elem->cellAnim, FX32_ONE * 2); // Advance cell animation time

            if (elem->applyAffineTransformation == FALSE) {
                const NNSG2dSRTControl *srtCtrl = &(elem->cellAnim.srtCtrl);
                NNSG2dFVec2 translation;

                translation.x = elem->translation.x + (fx32)(srtCtrl->srtData.trans.x << FX32_SHIFT);
                translation.y = elem->translation.y + (fx32)(srtCtrl->srtData.trans.y << FX32_SHIFT);

                if (elem->unk_8B == 0) {
                    numObjsUsed = NNS_G2dMakeCellToOams(oam, numObjs, NNS_G2dGetCellAnimationCurrentCell(&elem->cellAnim), NULL, &(translation), 0, FALSE);
                } else {
                    u16 affineIdx;

                    MTX_Identity22(elem->affineTransformation); // Create 2x2 identity matrix

                    // Apply rotation
                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_ROTATE) {
                        u16 rotZ = srtCtrl->srtData.rotZ + elem->rotZ;
                        MTX_Rot22(elem->affineTransformation, FX_SinIdx(rotZ), FX_CosIdx(rotZ));
                    } else if (elem->rotZ) {
                        MTX_Rot22(elem->affineTransformation, FX_SinIdx(elem->rotZ), FX_CosIdx(elem->rotZ));
                    }

                    // Apply scale
                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_SCALE) {
                        MTX_ScaleApply22(elem->affineTransformation, elem->affineTransformation, FX_Inv(srtCtrl->srtData.scale.x), FX_Inv(srtCtrl->srtData.scale.y));
                    }

                    affineIdx = NNS_G2dEntryOamManagerAffine(param0->oamMngr, elem->affineTransformation);
                    numObjsUsed = NNS_G2dMakeCellToOams(oam, numObjs, NNS_G2dGetCellAnimationCurrentCell(&elem->cellAnim), elem->affineTransformation, &(translation), affineIdx, TRUE);
                }

                numObjs -= numObjsUsed;

                while (numObjsUsed--) {
                    oam->priority = elem->oamPriority;
                    oam->cParam += elem->cParam;
                    oam->charNo += elem->charNo;
                    oam->flipH ^= elem->flipH;
                    oam->flipV ^= elem->flipV;
                    oam->mosaic ^= elem->mosaic;
                    oam++;
                }
            }

            elem = elem->leftElem;
        }

        if (oam > param0->oam) {
            NNS_G2dEntryOamManagerOam(param0->oamMngr, param0->oam, oam - param0->oam);
        }
    }
}

ov25_LinkedElement *ov25_SetupNewElem(UnkStruct_ov25_022555E8 *param0, const UnkStruct_ov25_02255810 *param1, const UnkStruct_ov25_02255958 *param2)
{
    ov25_LinkedElement *newElem = ov25_GetNextUnusedElemPointer(param0);

    if (newElem != NULL) {
        newElem->oamPriority = param1->unk_0B;
        newElem->unk_84_val1_unk_00 = param1->unk_0C;

        ov25_SortElemIntoList(param0, newElem);

        newElem->cellBank = param2->cellBank;
        newElem->animBack = param2->animBank;

        NNS_G2dInitCellAnimation(&(newElem->cellAnim), NNS_G2dGetAnimSequenceByIdx(newElem->animBack, param1->animIDX), newElem->cellBank);

        newElem->translation = param1->unk_00;
        newElem->cParam = 0;
        newElem->charNo = 0;
        newElem->flipH = ((param1->unk_0A & 1) != 0);
        newElem->flipV = ((param1->unk_0A & 2) != 0);
        newElem->mosaic = 0;
        newElem->rotZ = 0;
        newElem->affineTransformation = &(newElem->unk_74);
        newElem->unk_8B = param1->unk_0D;
        newElem->applyAffineTransformation = FALSE;
    }

    return newElem;
}

void ov25_RemoveElem(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1)
{
    ov25_RemoveElemFromList(param0, param1);
    ov25_MarkElemPointerUnused(param0, param1);
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

void ov25_Set_ElemApplyAffineTransformation(ov25_LinkedElement *param0, BOOL param1)
{
    param0->applyAffineTransformation = param1;
}

void ov25_UpdateElem_unk_84_00(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1, u32 param2)
{
    ov25_RemoveElemFromList(param0, param1);
    param1->unk_84_val1_unk_00 = param2;
    ov25_SortElemIntoList(param0, param1);
}

void ov25_Set_unk_88(ov25_LinkedElement *param0, u32 value)
{
    param0->cParam = value;
}

void ov25_Set_unk_8C(ov25_LinkedElement *param0, u32 value)
{
    param0->charNo = value;
}

void ov25_Set_unk_92(ov25_LinkedElement *param0, BOOL value)
{
    param0->mosaic = value;
}

void ov25_Set_ElemRotZ(ov25_LinkedElement *param0, u16 value)
{
    param0->rotZ = value;
}

BOOL ov25_LoadNARCMembers(UnkStruct_ov25_02255958 *param0, u32 narcId, u32 memberId, u32 memberId2, enum HeapId heapId)
{
    param0->heapID = heapId;
    param0->unk_00 = LoadCompressedMemberFromNARC(narcId, memberId, heapId);
    param0->unk_04 = LoadCompressedMemberFromNARC(narcId, memberId2, heapId);

    if ((param0->unk_00 != NULL) && (param0->unk_04 != NULL)) {
        if (!NNS_G2dGetUnpackedCellBank(param0->unk_00, &(param0->cellBank))) {
            return FALSE;
        }

        if (!NNS_G2dGetUnpackedMCAnimBank(param0->unk_04, &(param0->animBank))) {
            return FALSE;
        }
    }

    return TRUE;
}

void ov25_FreeNARCMembers(UnkStruct_ov25_02255958 *param0)
{
    if (param0->unk_00 != NULL) {
        Heap_FreeToHeapExplicit(param0->heapID, param0->unk_00);
        param0->unk_00 = NULL;
    }

    if (param0->unk_04 != NULL) {
        Heap_FreeToHeapExplicit(param0->heapID, param0->unk_04);
        param0->unk_04 = NULL;
    }
}

static void ov25_PopulatePointerArray(ov25_LinkedElement **param0, ov25_LinkedElement *param1, u32 numObjs)
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

static ov25_LinkedElement *ov25_GetNextUnusedElemPointer(UnkStruct_ov25_022555E8 *param0)
{
    if (param0->nextUnusedElemIdx < param0->numObjs) {
        return param0->elemPointerArray[param0->nextUnusedElemIdx++];
    }

    return NULL;
}

static void ov25_MarkElemPointerUnused(UnkStruct_ov25_022555E8 *param0, ov25_LinkedElement *param1)
{
    if (param0->nextUnusedElemIdx == 0) {
        return;
    }

    ov25_DissconectElem(param1);

    param0->nextUnusedElemIdx--;
    param0->elemPointerArray[param0->nextUnusedElemIdx] = param1;
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
