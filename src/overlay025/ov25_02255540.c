#include "overlay025/ov25_02255540.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

#include "graphics.h"
#include "heap.h"

struct ov25_540_GraphicObject_t {
    const NNSG2dCellDataBank *cellBank;
    const NNSG2dAnimBankData *animBack;
    NNSG2dCellAnimation cellAnim;
    struct ov25_540_GraphicObject_t *previousGraphicObject;
    struct ov25_540_GraphicObject_t *nextGraphicObject;
    NNSG2dFVec2 position;
    MtxFx22 *affineTransformationPtr;
    MtxFx22 affineTransformation;
    union {
        struct {
            u16 unk_84_val1_unk_00;
            u16 oamPriority;
        };
        u32 unk_84_val2;
    };
    u16 cParam;
    u8 isHidden;
    u8 hasAffineTransform;
    u16 charNo;
    u8 flipH;
    u8 flipV;
    u16 rotZ;
    u8 mosaic;
};

struct Ov25_540_GraphicManager_t {
    NNSG2dOamManagerInstance *oamMngr;
    ov25_540_GraphicObject **graphicObjectArray;
    ov25_540_GraphicObject *lastGraphicObject;
    ov25_540_GraphicObject *graphicObjectPool;
    u16 numObjs;
    u16 nextUnusedElemIdx;
    GXOamAttr *oam;
    u32 heapID;
};

static void ov25_PopulatePointerArray(ov25_540_GraphicObject **param0, ov25_540_GraphicObject *param1, u32 param2);
static void ov25_DissconectElem(ov25_540_GraphicObject *param0);
static ov25_540_GraphicObject *ov25_GetNextUnusedElemPointer(Ov25_540_GraphicManager *param0);
static void ov25_MarkElemPointerUnused(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1);
static void ov25_SortElemIntoList(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1);
static void ov25_RemoveElemFromList(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1);

Ov25_540_GraphicManager *ov25_SetupDataStructure(NNSG2dOamManagerInstance *oamMngr, u32 heapID)
{
    Ov25_540_GraphicManager *dataStructure;
    BOOL success = FALSE;

    do {
        dataStructure = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_GraphicManager));

        if (dataStructure == NULL) {
            break;
        }

        dataStructure->oam = NULL;
        dataStructure->graphicObjectPool = NULL;
        dataStructure->graphicObjectArray = NULL;
        dataStructure->oamMngr = oamMngr;
        dataStructure->heapID = heapID;
        dataStructure->numObjs = NNS_G2dGetOamManagerOamCapacity(oamMngr);
        dataStructure->oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * dataStructure->numObjs);

        if (dataStructure->oam == NULL) {
            break;
        }

        dataStructure->graphicObjectPool = Heap_AllocFromHeap(heapID, sizeof(ov25_540_GraphicObject) * dataStructure->numObjs);

        if (dataStructure->graphicObjectPool == NULL) {
            break;
        }

        dataStructure->graphicObjectArray = Heap_AllocFromHeap(heapID, sizeof(ov25_540_GraphicObject *) * dataStructure->numObjs);

        if (dataStructure->graphicObjectArray == NULL) {
            break;
        }

        ov25_PopulatePointerArray(dataStructure->graphicObjectArray, dataStructure->graphicObjectPool, dataStructure->numObjs);

        dataStructure->nextUnusedElemIdx = 0;
        dataStructure->lastGraphicObject = NULL;

        success = TRUE;
    } while (FALSE);

    if (success == FALSE) {
        if (dataStructure != NULL) {
            if (dataStructure->oam != NULL) {
                Heap_FreeToHeapExplicit(heapID, dataStructure->oam);
            }

            if (dataStructure->graphicObjectPool != NULL) {
                Heap_FreeToHeapExplicit(heapID, dataStructure->graphicObjectPool);
            }

            if (dataStructure->graphicObjectArray != NULL) {
                Heap_FreeToHeapExplicit(heapID, dataStructure->graphicObjectArray);
            }

            Heap_FreeToHeapExplicit(heapID, dataStructure);
        }

        return NULL;
    }

    return dataStructure;
}

void ov25_FreeOV25(Ov25_540_GraphicManager *param0)
{
    if (param0) {
        if (param0->oam) {
            Heap_FreeToHeap(param0->oam);
        }

        if (param0->graphicObjectPool) {
            Heap_FreeToHeap(param0->graphicObjectPool);
        }

        if (param0->graphicObjectArray) {
            Heap_FreeToHeap(param0->graphicObjectArray);
        }

        Heap_FreeToHeap(param0);
    }
}

void ov25_MainFunc(Ov25_540_GraphicManager *param0)
{
    if (param0->nextUnusedElemIdx) {
        ov25_540_GraphicObject *elem = param0->lastGraphicObject;
        GXOamAttr *oam = param0->oam;
        s32 numObjs = param0->numObjs;
        u32 numObjsUsed;

        while (elem != NULL) {
            NNS_G2dTickCellAnimation(&elem->cellAnim, FX32_ONE * 2); // Advance cell animation time

            if (elem->isHidden == FALSE) {
                const NNSG2dSRTControl *srtCtrl = &(elem->cellAnim.srtCtrl);
                NNSG2dFVec2 position;

                position.x = elem->position.x + (fx32)(srtCtrl->srtData.trans.x << FX32_SHIFT);
                position.y = elem->position.y + (fx32)(srtCtrl->srtData.trans.y << FX32_SHIFT);

                if (elem->hasAffineTransform == FALSE) {
                    numObjsUsed = NNS_G2dMakeCellToOams(oam, numObjs, NNS_G2dGetCellAnimationCurrentCell(&elem->cellAnim), NULL, &(position), 0, FALSE);
                } else {
                    u16 affineIdx;

                    MTX_Identity22(elem->affineTransformationPtr); // Create 2x2 identity matrix

                    // Apply rotation
                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_ROTATE) {
                        u16 rotZ = srtCtrl->srtData.rotZ + elem->rotZ;
                        MTX_Rot22(elem->affineTransformationPtr, FX_SinIdx(rotZ), FX_CosIdx(rotZ));
                    } else if (elem->rotZ) {
                        MTX_Rot22(elem->affineTransformationPtr, FX_SinIdx(elem->rotZ), FX_CosIdx(elem->rotZ));
                    }

                    // Apply scale
                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_SCALE) {
                        MTX_ScaleApply22(elem->affineTransformationPtr, elem->affineTransformationPtr, FX_Inv(srtCtrl->srtData.scale.x), FX_Inv(srtCtrl->srtData.scale.y));
                    }

                    affineIdx = NNS_G2dEntryOamManagerAffine(param0->oamMngr, elem->affineTransformationPtr);
                    numObjsUsed = NNS_G2dMakeCellToOams(oam, numObjs, NNS_G2dGetCellAnimationCurrentCell(&elem->cellAnim), elem->affineTransformationPtr, &(position), affineIdx, TRUE);
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

            elem = elem->previousGraphicObject;
        }

        if (oam > param0->oam) {
            NNS_G2dEntryOamManagerOam(param0->oamMngr, param0->oam, oam - param0->oam);
        }
    }
}

ov25_540_GraphicObject *ov25_SetupNewElem(Ov25_540_GraphicManager *param0, const UnkStruct_ov25_02255810 *param1, const UnkStruct_ov25_02255958 *param2)
{
    ov25_540_GraphicObject *newElem = ov25_GetNextUnusedElemPointer(param0);

    if (newElem != NULL) {
        newElem->oamPriority = param1->oamPriority;
        newElem->unk_84_val1_unk_00 = param1->unk_0C;

        ov25_SortElemIntoList(param0, newElem);

        newElem->cellBank = param2->cellBank;
        newElem->animBack = param2->animBank;

        NNS_G2dInitCellAnimation(&(newElem->cellAnim), NNS_G2dGetAnimSequenceByIdx(newElem->animBack, param1->animIDX), newElem->cellBank);

        newElem->position = param1->translation;
        newElem->cParam = 0;
        newElem->charNo = 0;
        newElem->flipH = ((param1->flip & 1) != 0);
        newElem->flipV = ((param1->flip & 2) != 0);
        newElem->mosaic = 0;
        newElem->rotZ = 0;
        newElem->affineTransformationPtr = &(newElem->affineTransformation);
        newElem->hasAffineTransform = param1->hasAffineTransform;
        newElem->isHidden = FALSE;
    }

    return newElem;
}

void ov25_RemoveElem(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1)
{
    ov25_RemoveElemFromList(param0, param1);
    ov25_MarkElemPointerUnused(param0, param1);
}

void ov25_InitAnimation(ov25_540_GraphicObject *param0, u32 animIDX)
{
    NNS_G2dInitCellAnimation(&(param0->cellAnim), NNS_G2dGetAnimSequenceByIdx(param0->animBack, animIDX), param0->cellBank);
}

BOOL ov25_AnimNotPlaying(ov25_540_GraphicObject *param0)
{
    NNSG2dAnimController *animCtrl = NNS_G2dGetCellAnimationAnimCtrl(&(param0->cellAnim));
    return NNS_G2dIsAnimCtrlActive(animCtrl) == FALSE;
}

void ov25_addTranslation(ov25_540_GraphicObject *param0, fx32 x, fx32 y)
{
    param0->position.x += x;
    param0->position.y += y;
}

void ov25_SetPosition(ov25_540_GraphicObject *param0, fx32 x, fx32 y)
{
    param0->position.x = x;
    param0->position.y = y;
}

void ov25_GetPosition(const ov25_540_GraphicObject *param0, fx32 *x, fx32 *y)
{
    *x = param0->position.x;
    *y = param0->position.y;
}

void ov25_540_Hide(ov25_540_GraphicObject *param0, BOOL param1)
{
    param0->isHidden = param1;
}

void ov25_UpdateElem_unk_84_00(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1, u32 param2)
{
    ov25_RemoveElemFromList(param0, param1);
    param1->unk_84_val1_unk_00 = param2;
    ov25_SortElemIntoList(param0, param1);
}

void ov25_Set_cParam(ov25_540_GraphicObject *param0, u32 value)
{
    param0->cParam = value;
}

void ov25_Set_charNo(ov25_540_GraphicObject *param0, u32 value)
{
    param0->charNo = value;
}

void ov25_Set_mosaic(ov25_540_GraphicObject *param0, BOOL value)
{
    param0->mosaic = value;
}

void ov25_Set_ElemRotZ(ov25_540_GraphicObject *param0, u16 value)
{
    param0->rotZ = value;
}

BOOL ov25_LoadNARCMembers(UnkStruct_ov25_02255958 *param0, enum NarcID narcId, u32 memberId, u32 memberId2, enum HeapId heapId)
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

static void ov25_PopulatePointerArray(ov25_540_GraphicObject **param0, ov25_540_GraphicObject *param1, u32 numObjs)
{
    while (numObjs--) {
        *param0 = param1;
        ov25_DissconectElem(param1);
        param1++;
        param0++;
    }
}

static void ov25_DissconectElem(ov25_540_GraphicObject *param0)
{
    param0->previousGraphicObject = NULL;
    param0->nextGraphicObject = NULL;
}

static ov25_540_GraphicObject *ov25_GetNextUnusedElemPointer(Ov25_540_GraphicManager *param0)
{
    if (param0->nextUnusedElemIdx < param0->numObjs) {
        return param0->graphicObjectArray[param0->nextUnusedElemIdx++];
    }

    return NULL;
}

static void ov25_MarkElemPointerUnused(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *param1)
{
    if (param0->nextUnusedElemIdx == 0) {
        return;
    }

    ov25_DissconectElem(param1);

    param0->nextUnusedElemIdx--;
    param0->graphicObjectArray[param0->nextUnusedElemIdx] = param1;
}

static void ov25_SortElemIntoList(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *newElem)
{
    if (param0->lastGraphicObject == NULL) {
        param0->lastGraphicObject = newElem;
        newElem->previousGraphicObject = NULL;
        newElem->nextGraphicObject = NULL;
    } else {
        ov25_540_GraphicObject *prevElem = param0->lastGraphicObject;

        while (TRUE) {
            if (newElem->unk_84_val2 < prevElem->unk_84_val2) {
                if (prevElem == param0->lastGraphicObject) {
                    param0->lastGraphicObject = newElem;
                }

                newElem->nextGraphicObject = prevElem->nextGraphicObject;

                if (newElem->nextGraphicObject) {
                    newElem->nextGraphicObject->previousGraphicObject = newElem;
                }

                newElem->previousGraphicObject = prevElem;
                prevElem->nextGraphicObject = newElem;

                break;
            }

            if (prevElem->previousGraphicObject == NULL) {
                prevElem->previousGraphicObject = newElem;
                newElem->nextGraphicObject = prevElem;
                newElem->previousGraphicObject = NULL;

                break;
            } else {
                prevElem = prevElem->previousGraphicObject;
            }
        }
    }
}

static void ov25_RemoveElemFromList(Ov25_540_GraphicManager *param0, ov25_540_GraphicObject *elem)
{
    if (elem->nextGraphicObject != NULL) {
        if (elem->previousGraphicObject != NULL) {
            elem->nextGraphicObject->previousGraphicObject = elem->previousGraphicObject;
            elem->previousGraphicObject->nextGraphicObject = elem->nextGraphicObject;
        } else {
            elem->nextGraphicObject->previousGraphicObject = NULL;
        }
    } else {
        if (elem->previousGraphicObject != NULL) {
            elem->previousGraphicObject->nextGraphicObject = NULL;
            param0->lastGraphicObject = elem->previousGraphicObject;
        } else {
            param0->lastGraphicObject = NULL;
        }
    }
}
