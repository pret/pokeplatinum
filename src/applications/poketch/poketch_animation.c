#include "applications/poketch/poketch_animation.h"

#include <nitro.h>
#include <string.h>

#include "graphics.h"
#include "heap.h"

struct PoketchAnimation_AnimatedSpriteData {
    const NNSG2dCellDataBank *cell;
    const NNSG2dAnimBankData *anim;
    NNSG2dCellAnimation spriteAnimation;

    struct PoketchAnimation_AnimatedSpriteData *previousAnimatedSprite;
    struct PoketchAnimation_AnimatedSpriteData *nextAnimatedSprite;

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

struct PoketchAnimation_AnimationManager {
    NNSG2dOamManagerInstance *oamMan;
    PoketchAnimation_AnimatedSpriteData **animatedSpritePtrArray;
    PoketchAnimation_AnimatedSpriteData *lastAnimatedSprite;
    PoketchAnimation_AnimatedSpriteData *animatedSpritePool;
    u16 numSlots;
    u16 nextUnusedSlotIdx;
    GXOamAttr *oam;
    u32 heapID;
};

static void PoketchAnimation_PopulateAnimatedSpritePtrArray(PoketchAnimation_AnimatedSpriteData **animatedSpritePtrArray, PoketchAnimation_AnimatedSpriteData *animatedSpritePool, u32 numSlots);
static void PoketchAnimation_UnlinkAnimatedSprite(PoketchAnimation_AnimatedSpriteData *animatedSprite);
static PoketchAnimation_AnimatedSpriteData *PoketchAnimation_GetNextUnusedAnimSlot(PoketchAnimation_AnimationManager *param0);
static void PoketchAnimation_MarkAnimatedSpriteUnused(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite);
static void PoketchAnimation_SortAnimIntoList(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite);
static void PoketchAnimation_RemoveAnimatedSpriteFromList(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite);

PoketchAnimation_AnimationManager *PoketchAnimation_SetupAnimationManager(NNSG2dOamManagerInstance *oamMan, u32 heapID)
{
    PoketchAnimation_AnimationManager *animMan;
    BOOL success = FALSE;

    do {
        animMan = Heap_AllocFromHeap(heapID, sizeof(PoketchAnimation_AnimationManager));

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

        animMan->animatedSpritePool = Heap_AllocFromHeap(heapID, sizeof(PoketchAnimation_AnimatedSpriteData) * animMan->numSlots);

        if (animMan->animatedSpritePool == NULL) {
            break;
        }

        animMan->animatedSpritePtrArray = Heap_AllocFromHeap(heapID, sizeof(PoketchAnimation_AnimatedSpriteData *) * animMan->numSlots);

        if (animMan->animatedSpritePtrArray == NULL) {
            break;
        }

        PoketchAnimation_PopulateAnimatedSpritePtrArray(animMan->animatedSpritePtrArray, animMan->animatedSpritePool, animMan->numSlots);

        animMan->nextUnusedSlotIdx = 0;
        animMan->lastAnimatedSprite = NULL;

        success = TRUE;
    } while (FALSE);

    if (success == FALSE) {
        if (animMan != NULL) {
            if (animMan->oam != NULL) {
                Heap_FreeExplicit(heapID, animMan->oam);
            }

            if (animMan->animatedSpritePool != NULL) {
                Heap_FreeExplicit(heapID, animMan->animatedSpritePool);
            }

            if (animMan->animatedSpritePtrArray != NULL) {
                Heap_FreeExplicit(heapID, animMan->animatedSpritePtrArray);
            }

            Heap_FreeExplicit(heapID, animMan);
        }

        return NULL;
    }

    return animMan;
}

void PoketchAnimation_FreeAnimationManager(PoketchAnimation_AnimationManager *animMan)
{
    if (animMan) {
        if (animMan->oam) {
            Heap_Free(animMan->oam);
        }

        if (animMan->animatedSpritePool) {
            Heap_Free(animMan->animatedSpritePool);
        }

        if (animMan->animatedSpritePtrArray) {
            Heap_Free(animMan->animatedSpritePtrArray);
        }

        Heap_Free(animMan);
    }
}

void PoketchAnimation_UpdateAnimations(PoketchAnimation_AnimationManager *animMan)
{
    if (animMan->nextUnusedSlotIdx) {
        PoketchAnimation_AnimatedSpriteData *animatedSprite = animMan->lastAnimatedSprite;
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

PoketchAnimation_AnimatedSpriteData *PoketchAnimation_SetupNewAnimatedSprite(PoketchAnimation_AnimationManager *animMan, const PoketchAnimation_AnimationData *animData, const PoketchAnimation_SpriteData *spriteData)
{
    PoketchAnimation_AnimatedSpriteData *animatedSprite = PoketchAnimation_GetNextUnusedAnimSlot(animMan);

    if (animatedSprite != NULL) {
        animatedSprite->oamPriority = animData->oamPriority;
        animatedSprite->priority = animData->priority;

        PoketchAnimation_SortAnimIntoList(animMan, animatedSprite);

        animatedSprite->cell = spriteData->cell;
        animatedSprite->anim = spriteData->anim;

        NNS_G2dInitCellAnimation(&(animatedSprite->spriteAnimation), NNS_G2dGetAnimSequenceByIdx(animatedSprite->anim, animData->animIdx), animatedSprite->cell);

        animatedSprite->position = animData->translation;
        animatedSprite->cParam = 0;
        animatedSprite->charNo = 0;
        animatedSprite->flipH = ((animData->flip & NNS_G2D_RENDERERFLIP_H) != NNS_G2D_RENDERERFLIP_NONE);
        animatedSprite->flipV = ((animData->flip & NNS_G2D_RENDERERFLIP_V) != NNS_G2D_RENDERERFLIP_NONE);
        animatedSprite->mosaic = FALSE;
        animatedSprite->rotZ = 0;
        animatedSprite->affineTransformationPtr = &(animatedSprite->affineTransformation);
        animatedSprite->hasAffineTransform = animData->hasAffineTransform;
        animatedSprite->isHidden = FALSE;
    }

    return animatedSprite;
}

void PoketchAnimation_RemoveAnimatedSprite(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite)
{
    PoketchAnimation_RemoveAnimatedSpriteFromList(animMan, animatedSprite);
    PoketchAnimation_MarkAnimatedSpriteUnused(animMan, animatedSprite);
}

void PoketchAnimation_UpdateAnimationIdx(PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 animIdx)
{
    NNS_G2dInitCellAnimation(&(animatedSprite->spriteAnimation), NNS_G2dGetAnimSequenceByIdx(animatedSprite->anim, animIdx), animatedSprite->cell);
}

BOOL PoketchAnimation_AnimationInactive(PoketchAnimation_AnimatedSpriteData *animatedSprite)
{
    NNSG2dAnimController *animCtrl = NNS_G2dGetCellAnimationAnimCtrl(&(animatedSprite->spriteAnimation));
    return NNS_G2dIsAnimCtrlActive(animCtrl) == FALSE;
}

void PoketchAnimation_TranslateSprite(PoketchAnimation_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y)
{
    animatedSprite->position.x += x;
    animatedSprite->position.y += y;
}

void PoketchAnimation_SetSpritePosition(PoketchAnimation_AnimatedSpriteData *animatedSprite, fx32 x, fx32 y)
{
    animatedSprite->position.x = x;
    animatedSprite->position.y = y;
}

void PoketchAnimation_GetSpritePosition(const PoketchAnimation_AnimatedSpriteData *animatedSprite, fx32 *x, fx32 *y)
{
    *x = animatedSprite->position.x;
    *y = animatedSprite->position.y;
}

void PoketchAnimation_HideSprite(PoketchAnimation_AnimatedSpriteData *animatedSprite, BOOL isHidden)
{
    animatedSprite->isHidden = isHidden;
}

void PoketchAnimation_SetSpritePrority(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 priority)
{
    PoketchAnimation_RemoveAnimatedSpriteFromList(animMan, animatedSprite);
    animatedSprite->priority = priority;
    PoketchAnimation_SortAnimIntoList(animMan, animatedSprite);
}

void PoketchAnimation_SetCParam(PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 value)
{
    animatedSprite->cParam = value;
}

void PoketchAnimation_SetSpriteCharNo(PoketchAnimation_AnimatedSpriteData *animatedSprite, u32 value)
{
    animatedSprite->charNo = value;
}

void PoketchAnimation_SetMosaic(PoketchAnimation_AnimatedSpriteData *animatedSprite, BOOL isMosaic)
{
    animatedSprite->mosaic = isMosaic;
}

void PoketchAnimation_SetSpriteRotation(PoketchAnimation_AnimatedSpriteData *animatedSprite, u16 rotation)
{
    animatedSprite->rotZ = rotation;
}

BOOL PoketchAnimation_LoadSpriteFromNARC(PoketchAnimation_SpriteData *spriteData, enum NarcID narcID, u32 spriteID, u32 animID, enum HeapId heapID)
{
    spriteData->heapID = heapID;
    spriteData->compressedSprite = LoadCompressedMemberFromNARC(narcID, spriteID, heapID);
    spriteData->compressedAnim = LoadCompressedMemberFromNARC(narcID, animID, heapID);

    if ((spriteData->compressedSprite != NULL) && (spriteData->compressedAnim != NULL)) {
        if (!NNS_G2dGetUnpackedCellBank(spriteData->compressedSprite, &(spriteData->cell))) {
            return FALSE;
        }

        if (!NNS_G2dGetUnpackedMCAnimBank(spriteData->compressedAnim, &(spriteData->anim))) {
            return FALSE;
        }
    }

    return TRUE;
}

void PoketchAnimation_FreeSpriteData(PoketchAnimation_SpriteData *spriteData)
{
    if (spriteData->compressedSprite != NULL) {
        Heap_FreeExplicit(spriteData->heapID, spriteData->compressedSprite);
        spriteData->compressedSprite = NULL;
    }

    if (spriteData->compressedAnim != NULL) {
        Heap_FreeExplicit(spriteData->heapID, spriteData->compressedAnim);
        spriteData->compressedAnim = NULL;
    }
}

static void PoketchAnimation_PopulateAnimatedSpritePtrArray(PoketchAnimation_AnimatedSpriteData **animatedSpritePtrArray, PoketchAnimation_AnimatedSpriteData *animatedSpritePool, u32 numSlots)
{
    while (numSlots--) {
        *animatedSpritePtrArray = animatedSpritePool;
        PoketchAnimation_UnlinkAnimatedSprite(animatedSpritePool);
        animatedSpritePool++;
        animatedSpritePtrArray++;
    }
}

static void PoketchAnimation_UnlinkAnimatedSprite(PoketchAnimation_AnimatedSpriteData *animatedSprite)
{
    animatedSprite->previousAnimatedSprite = NULL;
    animatedSprite->nextAnimatedSprite = NULL;
}

static PoketchAnimation_AnimatedSpriteData *PoketchAnimation_GetNextUnusedAnimSlot(PoketchAnimation_AnimationManager *animMan)
{
    if (animMan->nextUnusedSlotIdx < animMan->numSlots) {
        return animMan->animatedSpritePtrArray[animMan->nextUnusedSlotIdx++];
    }

    return NULL;
}

static void PoketchAnimation_MarkAnimatedSpriteUnused(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite)
{
    if (animMan->nextUnusedSlotIdx == 0) {
        return;
    }

    PoketchAnimation_UnlinkAnimatedSprite(animatedSprite);

    animMan->nextUnusedSlotIdx--;
    animMan->animatedSpritePtrArray[animMan->nextUnusedSlotIdx] = animatedSprite;
}

static void PoketchAnimation_SortAnimIntoList(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite)
{
    if (animMan->lastAnimatedSprite == NULL) {
        animMan->lastAnimatedSprite = animatedSprite;
        animatedSprite->previousAnimatedSprite = NULL;
        animatedSprite->nextAnimatedSprite = NULL;
    } else {
        PoketchAnimation_AnimatedSpriteData *prevAnimSlot = animMan->lastAnimatedSprite;

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

static void PoketchAnimation_RemoveAnimatedSpriteFromList(PoketchAnimation_AnimationManager *animMan, PoketchAnimation_AnimatedSpriteData *animatedSprite)
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
