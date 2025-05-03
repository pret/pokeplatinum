#include "overlay025/ov25_02255540.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

#include "graphics.h"
#include "heap.h"

struct Ov25_540_AnimatedSpriteData_t {
    const NNSG2dCellDataBank *sprite;
    const NNSG2dAnimBankData *anim;
    NNSG2dCellAnimation spriteAnimation;

    struct Ov25_540_AnimatedSpriteData_t *previousAnimatedSprite;
    struct Ov25_540_AnimatedSpriteData_t *nextAnimatedSprite;

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

struct Ov25_540_AnimationManager_t {
    NNSG2dOamManagerInstance *oamMan;
    Ov25_540_AnimatedSpriteData **animatedSpritePtrArray;
    Ov25_540_AnimatedSpriteData *lastAnimatedSprite;
    Ov25_540_AnimatedSpriteData *animatedSpritePool;
    u16 numSlots;
    u16 nextUnusedSlotIdx;
    GXOamAttr *oam;
    u32 heapID;
};

static void ov25_540_PopulateAnimatedSpritePtrArray(Ov25_540_AnimatedSpriteData **param0, Ov25_540_AnimatedSpriteData *param1, u32 param2);
static void ov25_540_UnlinkAnimatedSprite(Ov25_540_AnimatedSpriteData *param0);
static Ov25_540_AnimatedSpriteData *ov25_GetNextUnusedElemPointer(Ov25_540_AnimationManager *param0);
static void ov25_540_MarkAnimatedSpriteUnused(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *param1);
static void ov25_SortElemIntoList(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *param1);
static void ov25_540_RemoveAnimatedSpriteFromList(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *param1);

Ov25_540_AnimationManager *ov25_SetupDataStructure(NNSG2dOamManagerInstance *oamMan, u32 heapID)
{
    Ov25_540_AnimationManager *dataStructure;
    BOOL success = FALSE;

    do {
        dataStructure = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_AnimationManager));

        if (dataStructure == NULL) {
            break;
        }

        dataStructure->oam = NULL;
        dataStructure->animatedSpritePool = NULL;
        dataStructure->animatedSpritePtrArray = NULL;
        dataStructure->oamMan = oamMan;
        dataStructure->heapID = heapID;
        dataStructure->numSlots = NNS_G2dGetOamManagerOamCapacity(oamMan);
        dataStructure->oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * dataStructure->numSlots);

        if (dataStructure->oam == NULL) {
            break;
        }

        dataStructure->animatedSpritePool = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_AnimatedSpriteData) * dataStructure->numSlots);

        if (dataStructure->animatedSpritePool == NULL) {
            break;
        }

        dataStructure->animatedSpritePtrArray = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_AnimatedSpriteData *) * dataStructure->numSlots);

        if (dataStructure->animatedSpritePtrArray == NULL) {
            break;
        }

        ov25_540_PopulateAnimatedSpritePtrArray(dataStructure->animatedSpritePtrArray, dataStructure->animatedSpritePool, dataStructure->numSlots);

        dataStructure->nextUnusedSlotIdx = 0;
        dataStructure->lastAnimatedSprite = NULL;

        success = TRUE;
    } while (FALSE);

    if (success == FALSE) {
        if (dataStructure != NULL) {
            if (dataStructure->oam != NULL) {
                Heap_FreeToHeapExplicit(heapID, dataStructure->oam);
            }

            if (dataStructure->animatedSpritePool != NULL) {
                Heap_FreeToHeapExplicit(heapID, dataStructure->animatedSpritePool);
            }

            if (dataStructure->animatedSpritePtrArray != NULL) {
                Heap_FreeToHeapExplicit(heapID, dataStructure->animatedSpritePtrArray);
            }

            Heap_FreeToHeapExplicit(heapID, dataStructure);
        }

        return NULL;
    }

    return dataStructure;
}

void ov25_540_FreeAnimationManager(Ov25_540_AnimationManager *animMan)
{
    if (animMan) {
        if (animMan->oam) {
            Heap_FreeToHeap(animMan->oam);
        }

        if (animMan->animatedSpritePool) {
            Heap_FreeToHeap(animMan->animatedSpritePool);
        }

        if (animMan->animatedSpritePtrArray) {
            Heap_FreeToHeap(animMan->animatedSpritePtrArray);
        }

        Heap_FreeToHeap(animMan);
    }
}

void ov25_MainFunc(Ov25_540_AnimationManager *param0)
{
    if (param0->nextUnusedSlotIdx) {
        Ov25_540_AnimatedSpriteData *elem = param0->lastAnimatedSprite;
        GXOamAttr *oam = param0->oam;
        s32 numSlots = param0->numSlots;
        u32 numSlotsUsed;

        while (elem != NULL) {
            NNS_G2dTickCellAnimation(&elem->spriteAnimation, FX32_ONE * 2); // Advance cell animation time

            if (elem->isHidden == FALSE) {
                const NNSG2dSRTControl *srtCtrl = &(elem->spriteAnimation.srtCtrl);
                NNSG2dFVec2 position;

                position.x = elem->position.x + (fx32)(srtCtrl->srtData.trans.x << FX32_SHIFT);
                position.y = elem->position.y + (fx32)(srtCtrl->srtData.trans.y << FX32_SHIFT);

                if (elem->hasAffineTransform == FALSE) {
                    numSlotsUsed = NNS_G2dMakeCellToOams(oam, numSlots, NNS_G2dGetCellAnimationCurrentCell(&elem->spriteAnimation), NULL, &(position), 0, FALSE);
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

                    affineIdx = NNS_G2dEntryOamManagerAffine(param0->oamMan, elem->affineTransformationPtr);
                    numSlotsUsed = NNS_G2dMakeCellToOams(oam, numSlots, NNS_G2dGetCellAnimationCurrentCell(&elem->spriteAnimation), elem->affineTransformationPtr, &(position), affineIdx, TRUE);
                }

                numSlots -= numSlotsUsed;

                while (numSlotsUsed--) {
                    oam->priority = elem->oamPriority;
                    oam->cParam += elem->cParam;
                    oam->charNo += elem->charNo;
                    oam->flipH ^= elem->flipH;
                    oam->flipV ^= elem->flipV;
                    oam->mosaic ^= elem->mosaic;
                    oam++;
                }
            }

            elem = elem->previousAnimatedSprite;
        }

        if (oam > param0->oam) {
            NNS_G2dEntryOamManagerOam(param0->oamMan, param0->oam, oam - param0->oam);
        }
    }
}

Ov25_540_AnimatedSpriteData *ov25_540_SetupNewAnimatedSprite(Ov25_540_AnimationManager *animMan, const ov25_AnimationData *animData, const ov25_SpriteData *spriteData)
{
    Ov25_540_AnimatedSpriteData *animatedSprite = ov25_GetNextUnusedElemPointer(animMan);

    if (animatedSprite != NULL) {
        animatedSprite->oamPriority = animData->oamPriority;
        animatedSprite->unk_84_val1_unk_00 = animData->unk_0C;

        ov25_SortElemIntoList(animMan, animatedSprite);

        animatedSprite->sprite = spriteData->sprite;
        animatedSprite->anim = spriteData->anim;

        NNS_G2dInitCellAnimation(&(animatedSprite->spriteAnimation), NNS_G2dGetAnimSequenceByIdx(animatedSprite->anim, animData->animIdx), animatedSprite->sprite);

        animatedSprite->position = animData->translation;
        animatedSprite->cParam = 0;
        animatedSprite->charNo = 0;
        animatedSprite->flipH = ((animData->flip & 1) != 0);
        animatedSprite->flipV = ((animData->flip & 2) != 0);
        animatedSprite->mosaic = 0;
        animatedSprite->rotZ = 0;
        animatedSprite->affineTransformationPtr = &(animatedSprite->affineTransformation);
        animatedSprite->hasAffineTransform = animData->hasAffineTransform;
        animatedSprite->isHidden = FALSE;
    }

    return animatedSprite;
}

void ov25_540_RemoveAnimatedSprite(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *param1)
{
    ov25_540_RemoveAnimatedSpriteFromList(animMan, param1);
    ov25_540_MarkAnimatedSpriteUnused(animMan, param1);
}

void ov25_540_UpdateAnimationIdx(Ov25_540_AnimatedSpriteData *animatedSprite, u32 animIdx)
{
    NNS_G2dInitCellAnimation(&(animatedSprite->spriteAnimation), NNS_G2dGetAnimSequenceByIdx(animatedSprite->anim, animIdx), animatedSprite->sprite);
}

BOOL ov25_AnimNotPlaying(Ov25_540_AnimatedSpriteData *param0)
{
    NNSG2dAnimController *animCtrl = NNS_G2dGetCellAnimationAnimCtrl(&(param0->spriteAnimation));
    return NNS_G2dIsAnimCtrlActive(animCtrl) == FALSE;
}

void ov25_540_translateSprite(Ov25_540_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y)
{
    animatedSprite->position.x += x;
    animatedSprite->position.y += y;
}

void ov25_SetPosition(Ov25_540_AnimatedSpriteData *param0, fx32 x, fx32 y)
{
    param0->position.x = x;
    param0->position.y = y;
}

void ov25_GetPosition(const Ov25_540_AnimatedSpriteData *param0, fx32 *x, fx32 *y)
{
    *x = param0->position.x;
    *y = param0->position.y;
}

void ov25_540_Hide(Ov25_540_AnimatedSpriteData *param0, BOOL param1)
{
    param0->isHidden = param1;
}

void ov25_UpdateElem_unk_84_00(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *param1, u32 param2)
{
    ov25_540_RemoveAnimatedSpriteFromList(param0, param1);
    param1->unk_84_val1_unk_00 = param2;
    ov25_SortElemIntoList(param0, param1);
}

void ov25_540_SetCParam(Ov25_540_AnimatedSpriteData *animatedSprite, u32 value)
{
    animatedSprite->cParam = value;
}

void ov25_Set_charNo(Ov25_540_AnimatedSpriteData *param0, u32 value)
{
    param0->charNo = value;
}

void ov25_Set_mosaic(Ov25_540_AnimatedSpriteData *param0, BOOL value)
{
    param0->mosaic = value;
}

void ov25_Set_ElemRotZ(Ov25_540_AnimatedSpriteData *param0, u16 value)
{
    param0->rotZ = value;
}

BOOL ov25_540_LoadSpriteFromNARC(ov25_SpriteData *spriteData, enum NarcID narcId, u32 cellId, u32 animId, enum HeapId heapId)
{
    spriteData->heapID = heapId;
    spriteData->compressedSprite = LoadCompressedMemberFromNARC(narcId, cellId, heapId);
    spriteData->compressedAnim = LoadCompressedMemberFromNARC(narcId, animId, heapId);

    if ((spriteData->compressedSprite != NULL) && (spriteData->compressedAnim != NULL)) {
        if (!NNS_G2dGetUnpackedCellBank(spriteData->compressedSprite, &(spriteData->sprite))) {
            return FALSE;
        }

        if (!NNS_G2dGetUnpackedMCAnimBank(spriteData->compressedAnim, &(spriteData->anim))) {
            return FALSE;
        }
    }

    return TRUE;
}

void ov25_540_FreeSpriteData(ov25_SpriteData *spriteData)
{
    if (spriteData->compressedSprite != NULL) {
        Heap_FreeToHeapExplicit(spriteData->heapID, spriteData->compressedSprite);
        spriteData->compressedSprite = NULL;
    }

    if (spriteData->compressedAnim != NULL) {
        Heap_FreeToHeapExplicit(spriteData->heapID, spriteData->compressedAnim);
        spriteData->compressedAnim = NULL;
    }
}

static void ov25_540_PopulateAnimatedSpritePtrArray(Ov25_540_AnimatedSpriteData **animatedSpritePtrArray, Ov25_540_AnimatedSpriteData *animatedSpritePool, u32 numSlots)
{
    while (numSlots--) {
        *animatedSpritePtrArray = animatedSpritePool;
        ov25_540_UnlinkAnimatedSprite(animatedSpritePool);
        animatedSpritePool++;
        animatedSpritePtrArray++;
    }
}

static void ov25_540_UnlinkAnimatedSprite(Ov25_540_AnimatedSpriteData *animatedSprite)
{
    animatedSprite->previousAnimatedSprite = NULL;
    animatedSprite->nextAnimatedSprite = NULL;
}

static Ov25_540_AnimatedSpriteData *ov25_GetNextUnusedElemPointer(Ov25_540_AnimationManager *param0)
{
    if (param0->nextUnusedSlotIdx < param0->numSlots) {
        return param0->animatedSpritePtrArray[param0->nextUnusedSlotIdx++];
    }

    return NULL;
}

static void ov25_540_MarkAnimatedSpriteUnused(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite)
{
    if (animMan->nextUnusedSlotIdx == 0) {
        return;
    }

    ov25_540_UnlinkAnimatedSprite(animatedSprite);

    animMan->nextUnusedSlotIdx--;
    animMan->animatedSpritePtrArray[animMan->nextUnusedSlotIdx] = animatedSprite;
}

static void ov25_SortElemIntoList(Ov25_540_AnimationManager *param0, Ov25_540_AnimatedSpriteData *newElem)
{
    if (param0->lastAnimatedSprite == NULL) {
        param0->lastAnimatedSprite = newElem;
        newElem->previousAnimatedSprite = NULL;
        newElem->nextAnimatedSprite = NULL;
    } else {
        Ov25_540_AnimatedSpriteData *prevElem = param0->lastAnimatedSprite;

        while (TRUE) {
            if (newElem->unk_84_val2 < prevElem->unk_84_val2) {
                if (prevElem == param0->lastAnimatedSprite) {
                    param0->lastAnimatedSprite = newElem;
                }

                newElem->nextAnimatedSprite = prevElem->nextAnimatedSprite;

                if (newElem->nextAnimatedSprite) {
                    newElem->nextAnimatedSprite->previousAnimatedSprite = newElem;
                }

                newElem->previousAnimatedSprite = prevElem;
                prevElem->nextAnimatedSprite = newElem;

                break;
            }

            if (prevElem->previousAnimatedSprite == NULL) {
                prevElem->previousAnimatedSprite = newElem;
                newElem->nextAnimatedSprite = prevElem;
                newElem->previousAnimatedSprite = NULL;

                break;
            } else {
                prevElem = prevElem->previousAnimatedSprite;
            }
        }
    }
}

static void ov25_540_RemoveAnimatedSpriteFromList(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite)
{
    if (animatedSprite->nextAnimatedSprite != NULL) {
        if (animatedSprite->previousAnimatedSprite != NULL) {
            animatedSprite->nextAnimatedSprite->previousAnimatedSprite = animatedSprite->previousAnimatedSprite;
            animatedSprite->previousAnimatedSprite->nextAnimatedSprite = animatedSprite->nextAnimatedSprite;
        } else {
            animatedSprite->nextAnimatedSprite->previousAnimatedSprite = NULL;
        }
    } else {
        if (animatedSprite->previousAnimatedSprite != NULL) {
            animatedSprite->previousAnimatedSprite->nextAnimatedSprite = NULL;
            animMan->lastAnimatedSprite = animatedSprite->previousAnimatedSprite;
        } else {
            animMan->lastAnimatedSprite = NULL;
        }
    }
}
