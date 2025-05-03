#include "poketch/poketch_animation.h"

#include <nitro.h>
#include <string.h>

#include "poketch/poketch_structs.h"

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
            u16 priority;
            u16 oamPriority;
        };
        u32 combinedPriority;
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

static void ov25_540_PopulateAnimatedSpritePtrArray(Ov25_540_AnimatedSpriteData **animatedSpritePtrArray, Ov25_540_AnimatedSpriteData *animatedSpritePool, u32 numSlots);
static void ov25_540_UnlinkAnimatedSprite(Ov25_540_AnimatedSpriteData *animatedSprite);
static Ov25_540_AnimatedSpriteData *ov25_540_GetNextUnusedAnimSlot(Ov25_540_AnimationManager *param0);
static void ov25_540_MarkAnimatedSpriteUnused(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite);
static void ov25_540_SortAnimIntoList(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite);
static void ov25_540_RemoveAnimatedSpriteFromList(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite);

Ov25_540_AnimationManager *ov25_540_SetupAnimationManager(NNSG2dOamManagerInstance *oamMan, u32 heapID)
{
    Ov25_540_AnimationManager *animMan;
    BOOL success = FALSE;

    do {
        animMan = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_AnimationManager));

        if (animMan == NULL) {
            break;
        }

        animMan->oam = NULL;
        animMan->animatedSpritePool = NULL;
        animMan->animatedSpritePtrArray = NULL;
        animMan->oamMan = oamMan;
        animMan->heapID = heapID;
        animMan->numSlots = NNS_G2dGetOamManagerOamCapacity(oamMan);
        animMan->oam = Heap_AllocFromHeap(heapID, sizeof(GXOamAttr) * animMan->numSlots);

        if (animMan->oam == NULL) {
            break;
        }

        animMan->animatedSpritePool = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_AnimatedSpriteData) * animMan->numSlots);

        if (animMan->animatedSpritePool == NULL) {
            break;
        }

        animMan->animatedSpritePtrArray = Heap_AllocFromHeap(heapID, sizeof(Ov25_540_AnimatedSpriteData *) * animMan->numSlots);

        if (animMan->animatedSpritePtrArray == NULL) {
            break;
        }

        ov25_540_PopulateAnimatedSpritePtrArray(animMan->animatedSpritePtrArray, animMan->animatedSpritePool, animMan->numSlots);

        animMan->nextUnusedSlotIdx = 0;
        animMan->lastAnimatedSprite = NULL;

        success = TRUE;
    } while (FALSE);

    if (success == FALSE) {
        if (animMan != NULL) {
            if (animMan->oam != NULL) {
                Heap_FreeToHeapExplicit(heapID, animMan->oam);
            }

            if (animMan->animatedSpritePool != NULL) {
                Heap_FreeToHeapExplicit(heapID, animMan->animatedSpritePool);
            }

            if (animMan->animatedSpritePtrArray != NULL) {
                Heap_FreeToHeapExplicit(heapID, animMan->animatedSpritePtrArray);
            }

            Heap_FreeToHeapExplicit(heapID, animMan);
        }

        return NULL;
    }

    return animMan;
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

void ov25_540_UpdateAnimations(Ov25_540_AnimationManager *animMan)
{
    if (animMan->nextUnusedSlotIdx) {
        Ov25_540_AnimatedSpriteData *animatedSprite = animMan->lastAnimatedSprite;
        GXOamAttr *oam = animMan->oam;
        s32 numSlots = animMan->numSlots;
        u32 numSlotsUsed;

        while (animatedSprite != NULL) {
            NNS_G2dTickCellAnimation(&animatedSprite->spriteAnimation, FX32_ONE * 2); // Advance cell animation time

            if (animatedSprite->isHidden == FALSE) {
                const NNSG2dSRTControl *srtCtrl = &(animatedSprite->spriteAnimation.srtCtrl);
                NNSG2dFVec2 position;

                position.x = animatedSprite->position.x + (fx32)(srtCtrl->srtData.trans.x << FX32_SHIFT);
                position.y = animatedSprite->position.y + (fx32)(srtCtrl->srtData.trans.y << FX32_SHIFT);

                if (animatedSprite->hasAffineTransform == FALSE) {
                    numSlotsUsed = NNS_G2dMakeCellToOams(oam, numSlots, NNS_G2dGetCellAnimationCurrentCell(&animatedSprite->spriteAnimation), NULL, &(position), 0, FALSE);
                } else {
                    u16 affineIdx;

                    MTX_Identity22(animatedSprite->affineTransformationPtr); // Create 2x2 identity matrix

                    // Apply rotation
                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_ROTATE) {
                        u16 rotZ = srtCtrl->srtData.rotZ + animatedSprite->rotZ;
                        MTX_Rot22(animatedSprite->affineTransformationPtr, FX_SinIdx(rotZ), FX_CosIdx(rotZ));
                    } else if (animatedSprite->rotZ) {
                        MTX_Rot22(animatedSprite->affineTransformationPtr, FX_SinIdx(animatedSprite->rotZ), FX_CosIdx(animatedSprite->rotZ));
                    }

                    // Apply scale
                    if (srtCtrl->srtData.SRT_EnableFlag & NNS_G2D_AFFINEENABLE_SCALE) {
                        MTX_ScaleApply22(animatedSprite->affineTransformationPtr, animatedSprite->affineTransformationPtr, FX_Inv(srtCtrl->srtData.scale.x), FX_Inv(srtCtrl->srtData.scale.y));
                    }

                    affineIdx = NNS_G2dEntryOamManagerAffine(animMan->oamMan, animatedSprite->affineTransformationPtr);
                    numSlotsUsed = NNS_G2dMakeCellToOams(oam, numSlots, NNS_G2dGetCellAnimationCurrentCell(&animatedSprite->spriteAnimation), animatedSprite->affineTransformationPtr, &(position), affineIdx, TRUE);
                }

                numSlots -= numSlotsUsed;

                while (numSlotsUsed--) {
                    oam->priority = animatedSprite->oamPriority;
                    oam->cParam += animatedSprite->cParam;
                    oam->charNo += animatedSprite->charNo;
                    oam->flipH ^= animatedSprite->flipH;
                    oam->flipV ^= animatedSprite->flipV;
                    oam->mosaic ^= animatedSprite->mosaic;
                    oam++;
                }
            }

            animatedSprite = animatedSprite->previousAnimatedSprite;
        }

        if (oam > animMan->oam) {
            NNS_G2dEntryOamManagerOam(animMan->oamMan, animMan->oam, oam - animMan->oam);
        }
    }
}

Ov25_540_AnimatedSpriteData *ov25_540_SetupNewAnimatedSprite(Ov25_540_AnimationManager *animMan, const ov25_AnimationData *animData, const ov25_SpriteData *spriteData)
{
    Ov25_540_AnimatedSpriteData *animatedSprite = ov25_540_GetNextUnusedAnimSlot(animMan);

    if (animatedSprite != NULL) {
        animatedSprite->oamPriority = animData->oamPriority;
        animatedSprite->priority = animData->unk_0C;

        ov25_540_SortAnimIntoList(animMan, animatedSprite);

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

void ov25_540_RemoveAnimatedSprite(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite)
{
    ov25_540_RemoveAnimatedSpriteFromList(animMan, animatedSprite);
    ov25_540_MarkAnimatedSpriteUnused(animMan, animatedSprite);
}

void ov25_540_UpdateAnimationIdx(Ov25_540_AnimatedSpriteData *animatedSprite, u32 animIdx)
{
    NNS_G2dInitCellAnimation(&(animatedSprite->spriteAnimation), NNS_G2dGetAnimSequenceByIdx(animatedSprite->anim, animIdx), animatedSprite->sprite);
}

BOOL ov25_540_AnimationInactive(Ov25_540_AnimatedSpriteData *animatedSprite)
{
    NNSG2dAnimController *animCtrl = NNS_G2dGetCellAnimationAnimCtrl(&(animatedSprite->spriteAnimation));
    return NNS_G2dIsAnimCtrlActive(animCtrl) == FALSE;
}

void ov25_540_TranslateSprite(Ov25_540_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y)
{
    animatedSprite->position.x += x;
    animatedSprite->position.y += y;
}

void ov25_540_SetSpritePosition(Ov25_540_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y)
{
    animatedSprite->position.x = x;
    animatedSprite->position.y = y;
}

void ov25_540_GetSpritePosition(const Ov25_540_AnimatedSpriteData *animatedSprite, fx32 *x, fx32 *y)
{
    *x = animatedSprite->position.x;
    *y = animatedSprite->position.y;
}

void ov25_540_HideSprite(Ov25_540_AnimatedSpriteData *animatedSprite, BOOL isHidden)
{
    animatedSprite->isHidden = isHidden;
}

void ov25_540_SetSpritePrority(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite, u32 priority)
{
    ov25_540_RemoveAnimatedSpriteFromList(animMan, animatedSprite);
    animatedSprite->priority = priority;
    ov25_540_SortAnimIntoList(animMan, animatedSprite);
}

void ov25_540_SetCParam(Ov25_540_AnimatedSpriteData *animatedSprite, u32 value)
{
    animatedSprite->cParam = value;
}

void ov25_540_SetSpriteCharNo(Ov25_540_AnimatedSpriteData *animatedSprite, u32 value)
{
    animatedSprite->charNo = value;
}

void ov25_Set_mosaic(Ov25_540_AnimatedSpriteData *animatedSprite, BOOL isMosaic)
{
    animatedSprite->mosaic = isMosaic;
}

void ov25_540_SetSpriteRotation(Ov25_540_AnimatedSpriteData *animatedSprite, u16 rotation)
{
    animatedSprite->rotZ = rotation;
}

BOOL ov25_540_LoadSpriteFromNARC(ov25_SpriteData *spriteData, enum NarcID narcId, u32 spriteId, u32 animId, enum HeapId heapId)
{
    spriteData->heapID = heapId;
    spriteData->compressedSprite = LoadCompressedMemberFromNARC(narcId, spriteId, heapId);
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

static Ov25_540_AnimatedSpriteData *ov25_540_GetNextUnusedAnimSlot(Ov25_540_AnimationManager *animMan)
{
    if (animMan->nextUnusedSlotIdx < animMan->numSlots) {
        return animMan->animatedSpritePtrArray[animMan->nextUnusedSlotIdx++];
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

static void ov25_540_SortAnimIntoList(Ov25_540_AnimationManager *animMan, Ov25_540_AnimatedSpriteData *animatedSprite)
{
    if (animMan->lastAnimatedSprite == NULL) {
        animMan->lastAnimatedSprite = animatedSprite;
        animatedSprite->previousAnimatedSprite = NULL;
        animatedSprite->nextAnimatedSprite = NULL;
    } else {
        Ov25_540_AnimatedSpriteData *prevAnimSlot = animMan->lastAnimatedSprite;

        while (TRUE) {
            if (animatedSprite->combinedPriority < prevAnimSlot->combinedPriority) {
                if (prevAnimSlot == animMan->lastAnimatedSprite) {
                    animMan->lastAnimatedSprite = animatedSprite;
                }

                animatedSprite->nextAnimatedSprite = prevAnimSlot->nextAnimatedSprite;

                if (animatedSprite->nextAnimatedSprite) {
                    animatedSprite->nextAnimatedSprite->previousAnimatedSprite = animatedSprite;
                }

                animatedSprite->previousAnimatedSprite = prevAnimSlot;
                prevAnimSlot->nextAnimatedSprite = animatedSprite;

                break;
            }

            if (prevAnimSlot->previousAnimatedSprite == NULL) {
                prevAnimSlot->previousAnimatedSprite = animatedSprite;
                animatedSprite->nextAnimatedSprite = prevAnimSlot;
                animatedSprite->previousAnimatedSprite = NULL;

                break;
            } else {
                prevAnimSlot = prevAnimSlot->previousAnimatedSprite;
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
