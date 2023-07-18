
#include <nitro.h>
#include <nnsys/g2d/g2d_MultiCellAnimation.h>
#include <nnsys/g2d/g2d_SRTControl.h>
#include <nnsys/g2d/load/g2d_NMC_load.h>
#include <nnsys/g2d/load/g2d_NAN_load.h>

static NNS_G2D_INLINE void SetNodeDataToCellAnim_ (NNSG2dCellAnimation * pCellAnim, const NNSG2dMultiCellHierarchyData * pNodeData, const NNSG2dAnimBankData * pAnimBank, u16 mcTotalFrame) {
    const NNSG2dAnimSequenceData * pAnimSeq = NULL;

    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_NULL_ASSERT(pNodeData);
    NNS_G2D_NULL_ASSERT(pAnimBank);

    pAnimSeq = NNS_G2dGetAnimSequenceByIdx(pAnimBank, pNodeData->animSequenceIdx);

    NNS_G2dSetCellAnimationSequence(pCellAnim, pAnimSeq);

    NNS_G2dStartAnimCtrl(NNS_G2dGetCellAnimationAnimCtrl(pCellAnim));

    if (NNSi_G2dGetMultiCellNodePlayMode(pNodeData) == NNS_G2D_MCANIM_PLAYMODE_CONTINUE) {
        const u32 animSeqLength = NNS_G2dCalcAnimSequenceTotalVideoFrames(pAnimSeq);

        if (NNSi_G2dIsAnimCtrlLoopAnim(NNS_G2dGetCellAnimationAnimCtrl(pCellAnim))) {
            const u32 frameToMove = (mcTotalFrame % animSeqLength);
            NNS_G2dTickCellAnimation(pCellAnim, (fx32)(frameToMove << FX32_SHIFT));
        } else {
            const u32 frameToMove = (mcTotalFrame >= animSeqLength) ? animSeqLength : mcTotalFrame;
            NNS_G2dTickCellAnimation(pCellAnim, (fx32)(frameToMove << FX32_SHIFT));
        }
    }
}

static void SetMCDataToMCInstanceImpl_ (NNSG2dMultiCellInstance * pMCInst, const NNSG2dMultiCellData * pMcData, u16 mcTotalFrame) {
    u16 i;

    NNS_G2D_NULL_ASSERT(pMCInst);
    NNS_G2D_NULL_ASSERT(pMCInst->pAnimDataBank);
    NNS_G2D_NULL_ASSERT(pMcData);

    pMCInst->pCurrentMultiCell = pMcData;

    if (pMCInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        NNSG2dMCCellAnimation * pCellAnimArray = (NNSG2dMCCellAnimation *)pMCInst->pCellAnimInstasnces;

        for ( i = 0; i < pMcData->numCellAnim; i++ ) {
            pCellAnimArray[i].bInited = FALSE;
        }

        for ( i = 0; i < pMcData->numNodes; i++ ) {
            const NNSG2dMultiCellHierarchyData * pNodeData = &pMcData->pHierDataArray[i];
            const u16 cellAnimIdx = NNSi_G2dGetMC2NodeCellAinmIdx(pNodeData);

            if (!pCellAnimArray[cellAnimIdx].bInited) {
                NNSG2dCellAnimation * pCellAnim = &pCellAnimArray[cellAnimIdx].cellAnim;

                SetNodeDataToCellAnim_(
                    pCellAnim,
                    pNodeData,
                    pMCInst->pAnimDataBank,
                    mcTotalFrame
                );

                pCellAnimArray[cellAnimIdx].bInited = TRUE;
            }
        }
    } else {
        NNSG2dNode * pNodeArray = (NNSG2dNode *)(pMCInst->pCellAnimInstasnces);

        for ( i = 0; i < pMcData->numNodes; i++ ) {
            const NNSG2dMultiCellHierarchyData * pNodeData = &pMcData->pHierDataArray[i];
            NNSG2dCellAnimation * pCellAnim = (NNSG2dCellAnimation *)pNodeArray[i].pContent;

            SetNodeDataToCellAnim_(
                pCellAnim,
                pNodeData,
                pMCInst->pAnimDataBank,
                mcTotalFrame
            );

            pNodeArray[i].bVisible = TRUE;
            NNSi_G2dSrtcSetTrans(&pNodeArray[i].srtCtrl, pNodeData->posX, pNodeData->posY);
        }
    }
}

static NNS_G2D_INLINE void ApplyCurrentAnimResult_ (NNSG2dMultiCellAnimation * pMultiCellAnim) {
    const NNSG2dAnimDataSRT * pAnimResult = NULL;
    const NNSG2dMultiCellData * pData = NULL;

    NNS_G2D_NULL_ASSERT(pMultiCellAnim);
    NNS_G2D_NULL_ASSERT(pMultiCellAnim->pMultiCellDataBank);

    if (pMultiCellAnim->animCtrl.pActiveCurrent->frames == 0) {
        return;
    }
    pAnimResult = (const NNSG2dAnimDataSRT *)NNS_G2dGetAnimCtrlCurrentElement(&pMultiCellAnim->animCtrl);
    NNS_G2D_NULL_ASSERT(pAnimResult);

    pData = NNS_G2dGetMultiCellDataByIdx(
        pMultiCellAnim->pMultiCellDataBank,
        pAnimResult->index
    );
    NNS_G2D_NULL_ASSERT(pData);

    {
        const NNSG2dAnimationElement elemType = NNSi_G2dGetAnimSequenceElementType(pMultiCellAnim->animCtrl.pAnimSequence->animType);
        NNSi_G2dSrtcInitControl(&pMultiCellAnim->srtCtrl, NNS_G2D_SRTCONTROLTYPE_SRT);

        if (elemType != NNS_G2D_ANIMELEMENT_INDEX) {
            if (elemType == NNS_G2D_ANIMELEMENT_INDEX_T) {
                const NNSG2dAnimDataT * pAnmResT = (const NNSG2dAnimDataT *)pAnimResult;
                NNSi_G2dSrtcSetTrans(&pMultiCellAnim->srtCtrl, pAnmResT->px, pAnmResT->py);
            } else {
                NNSi_G2dSrtcSetSRTScale(&pMultiCellAnim->srtCtrl, pAnimResult->sx, pAnimResult->sy);
                NNSi_G2dSrtcSetSRTRotZ(&pMultiCellAnim->srtCtrl, pAnimResult->rotZ);
                NNSi_G2dSrtcSetTrans(&pMultiCellAnim->srtCtrl, pAnimResult->px, pAnimResult->py);
            }
        }
    }

    SetMCDataToMCInstanceImpl_(
        &pMultiCellAnim->multiCellInstance,
        pData,
        pMultiCellAnim->totalVideoFrame
    );

    NNS_G2D_NULL_ASSERT(pMultiCellAnim->multiCellInstance.pCurrentMultiCell);
}

static NNS_G2D_INLINE void FVecToSVec (const NNSG2dFVec2 * pvSrc, NNSG2dSVec2 * pvDst) {
    pvDst->x = (s16)(pvSrc->x >> FX32_SHIFT);
    pvDst->y = (s16)(pvSrc->y >> FX32_SHIFT);
}

static NNS_G2D_INLINE void SVecToFVec (const NNSG2dSVec2 * pvSrc, NNSG2dFVec2 * pvDst) {
    pvDst->x = pvSrc->x << FX32_SHIFT;
    pvDst->y = pvSrc->y << FX32_SHIFT;
}

static NNS_G2D_INLINE void AddSVec_ (const NNSG2dSVec2 * pv1, const NNSG2dSVec2 * pv2, NNSG2dSVec2 * pvDst) {
    pvDst->x = (s16)(pv1->x + pv2->x);
    pvDst->y = (s16)(pv1->y + pv2->y);
}

static u16 GetMCBankNumCellAnimRequired_ (const NNSG2dMultiCellDataBank * pMultiCellDataBank) {
    NNS_G2D_NULL_ASSERT(pMultiCellDataBank);
    {
        const NNSG2dMultiCellData * pMCell = NULL;
        u16 maxNum = 0;
        u16 i;

        for ( i = 0; i < pMultiCellDataBank->numMultiCellData; i++ ) {
            pMCell = NNS_G2dGetMultiCellDataByIdx(pMultiCellDataBank, i);
            NNS_G2D_NULL_ASSERT(pMCell);

            if (pMCell->numCellAnim > maxNum) {
                maxNum = pMCell->numCellAnim;
            }
        }
        return maxNum;
    }
}

static u16 MakeCellAnimToOams_ (GXOamAttr * pDstOams, u16 numDstOams, const NNSG2dCellAnimation * pCellAnim, const NNSG2dSVec2 * pNodeTrans, const MtxFx22 * pMtxSR, const NNSG2dFVec2 * pBaseTrans, u16 affineIndex, BOOL bDoubleAffine) {
    NNSG2dFVec2 vTransF;
    NNSG2dSVec2 vTransS;
    const NNSG2dSRTControl * pContentsSRT;

    pContentsSRT = &pCellAnim->srtCtrl;

    {
        AddSVec_(
            &pContentsSRT->srtData.trans,
            pNodeTrans,
            &vTransS
        );

        if (pMtxSR != NULL) {
            vTransF.x = pMtxSR->_00 * vTransS.x + pMtxSR->_10 * vTransS.y;
            vTransF.y = pMtxSR->_01 * vTransS.x + pMtxSR->_11 * vTransS.y;
        } else {
            SVecToFVec(&vTransS, &vTransF);
        }

        if (pBaseTrans != NULL) {
            vTransF.x += pBaseTrans->x;
            vTransF.y += pBaseTrans->y;
        }
    }

    if (NNSi_G2dSrtcIsAffineEnable_SR(pContentsSRT)) {
        OS_Warning("invalid affine transformation is found in NNS_G2dInitMCAnimation()");
    }

    return NNS_G2dMakeCellToOams(
        pDstOams,
        numDstOams,
        NNS_G2dGetCellAnimationCurrentCell(pCellAnim),
        pMtxSR,
        &vTransF,
        affineIndex,
        bDoubleAffine
    );
}

static NNS_G2D_INLINE u16 MakeSimpleMultiCellToOams_ (GXOamAttr * pDstOams, u16 numDstOams, const NNSG2dMultiCellInstance * pMCellInst, const MtxFx22 * pMtxSR, const NNSG2dFVec2 * pBaseTrans, u16 affineIndex, BOOL bDoubleAffine) {
    u16 i = 0;
    u16 numOamUsed = 0;
    int numRestOams = numDstOams;
    NNSG2dNode * pNode = NULL;

    NNS_G2D_NULL_ASSERT(pDstOams);
    NNS_G2D_NULL_ASSERT(pMCellInst);
    NNS_G2D_NULL_ASSERT(pMCellInst->pCurrentMultiCell);
    NNS_G2D_ASSERT(pMCellInst->mcType == NNS_G2D_MCTYPE_DONOT_SHARE_CELLANIM);

    pNode = (NNSG2dNode *)pMCellInst->pCellAnimInstasnces;
    for ( i = 0; i < pMCellInst->pCurrentMultiCell->numNodes; i++ ) {
        if (numRestOams > 0) {
            NNS_G2D_WARNING(
                pNode->type == NNS_G2D_NODETYPE_CELL &&
                !NNSi_G2dSrtcIsAffineEnable_SR(&pNode->srtCtrl),
                "A SR-Transformation of a multicell-node was ignored."
            );

            numOamUsed = MakeCellAnimToOams_(
                pDstOams,
                (u16)numRestOams,
                pNode[i].pContent,
                &pNode[i].srtCtrl.srtData.trans,
                pMtxSR,
                pBaseTrans,
                affineIndex,
                bDoubleAffine
            );

            numRestOams -= numOamUsed;
            pDstOams += numOamUsed;
        } else {
            break;
        }
    }

    NNS_G2D_ASSERT(numDstOams >= numRestOams);
    return (u16)(numDstOams - numRestOams);
}

static NNS_G2D_INLINE u16 MakeSimpleMultiCellToOams_ShareCellAnims_ (GXOamAttr * pDstOams, u16 numDstOams, const NNSG2dMultiCellInstance * pMCellInst, const MtxFx22 * pMtxSR, const NNSG2dFVec2 * pBaseTrans, u16 affineIndex, BOOL bDoubleAffine) {
    u16 i = 0;
    u16 numOamUsed = 0;
    int numRestOams = numDstOams;
    const NNSG2dMCCellAnimation * pMCCellAnimArray = NULL;
    NNSG2dSVec2 nodeTrans;

    NNS_G2D_NULL_ASSERT(pDstOams);
    NNS_G2D_NULL_ASSERT(pMCellInst);
    NNS_G2D_NULL_ASSERT(pMCellInst->pCurrentMultiCell);
    NNS_G2D_ASSERT(pMCellInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM);

    pMCCellAnimArray = (const NNSG2dMCCellAnimation *)pMCellInst->pCellAnimInstasnces;

    for ( i = 0; i < pMCellInst->pCurrentMultiCell->numNodes; i++ ) {
        const NNSG2dMultiCellHierarchyData * pNode
            = &pMCellInst->pCurrentMultiCell->pHierDataArray[i];

        const u16 cellAnimIdx = NNSi_G2dGetMC2NodeCellAinmIdx(pNode);

        if (numRestOams > 0) {
            nodeTrans.x = pNode->posX;
            nodeTrans.y = pNode->posY;

            numOamUsed = MakeCellAnimToOams_(
                pDstOams,
                (u16)numRestOams,
                &pMCCellAnimArray[cellAnimIdx].cellAnim,
                &nodeTrans,
                pMtxSR,
                pBaseTrans,
                affineIndex,
                bDoubleAffine
            );

            numRestOams -= numOamUsed;
            pDstOams += numOamUsed;
        } else {
            break;
        }
    }

    NNS_G2D_ASSERT(numDstOams >= numRestOams);
    return (u16)(numDstOams - numRestOams);
}

static NNS_G2D_INLINE void InitMCInstance_ (NNSG2dMultiCellInstance * pMultiCell, NNSG2dNode * pNodeArray, NNSG2dCellAnimation * pCellAnim, u16 numNode, const NNSG2dCellAnimBankData * pAnimBank, const NNSG2dCellDataBank * pCellDataBank) {
    NNS_G2D_NULL_ASSERT(pMultiCell);
    NNS_G2D_NULL_ASSERT(pNodeArray);
    NNS_G2D_NULL_ASSERT(pAnimBank);
    NNS_G2D_ASSERTMSG(numNode != 0, "Non zero value is expected.");

    pMultiCell->mcType = NNS_G2D_MCTYPE_DONOT_SHARE_CELLANIM;
    pMultiCell->pCurrentMultiCell = NULL;
    pMultiCell->pAnimDataBank = pAnimBank;
    pMultiCell->pCellAnimInstasnces = (void *)pNodeArray;

    {
        u16 i;
        for ( i = 0; i < numNode; i++ ) {
            NNSi_G2dInitializeNode(&pNodeArray[i], NNS_G2D_NODETYPE_CELL);

            pNodeArray[i].pContent = &pCellAnim[i];

            NNS_G2dInitCellAnimation(
                &pCellAnim[i],
                NNS_G2dGetAnimSequenceByIdx(pAnimBank, 0),
                pCellDataBank
            );
        }
    }
}

static NNS_G2D_INLINE void InitMCAnimation_ (NNSG2dMultiCellAnimation * pMultiCellAnim, NNSG2dNode * pNodeArray, NNSG2dCellAnimation * pCellAnim, u16 numNode, const NNSG2dCellAnimBankData * pAnimBank, const NNSG2dCellDataBank * pCellDataBank, const NNSG2dMultiCellDataBank * pMultiCellDataBank) {
#pragma unused( pMultiCellDataBank )
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);

    NNS_G2D_NULL_ASSERT(pNodeArray);
    NNS_G2D_NULL_ASSERT(pCellAnim);
    NNS_G2D_ASSERTMSG(numNode != 0, "TODO: msg");

    NNS_G2D_NULL_ASSERT(pAnimBank);
    NNS_G2D_NULL_ASSERT(pCellDataBank);

    NNS_G2D_NULL_ASSERT(pMultiCellDataBank);

    InitMCInstance_(
        &pMultiCellAnim->multiCellInstance,
        pNodeArray,
        pCellAnim,
        numNode,
        pAnimBank,
        pCellDataBank
    );

    NNS_G2dInitAnimCtrl(&pMultiCellAnim->animCtrl);
    pMultiCellAnim->pMultiCellDataBank = pMultiCellDataBank;
    NNSi_G2dSrtcInitControl(&pMultiCellAnim->srtCtrl, NNS_G2D_SRTCONTROLTYPE_SRT);
    pMultiCellAnim->totalVideoFrame = 0;
}

static NNS_G2D_INLINE void InitMCAnimation_SharingCellAnim_ (NNSG2dMultiCellAnimation * pMultiCellAnim, void * pWork, const NNSG2dCellAnimBankData * pAnimBank, const NNSG2dCellDataBank * pCellDataBank, const NNSG2dMultiCellDataBank * pMultiCellDataBank) {
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);
    NNS_G2D_NULL_ASSERT(pWork);
    NNS_G2D_NULL_ASSERT(pAnimBank);
    NNS_G2D_NULL_ASSERT(pCellDataBank);
    NNS_G2D_NULL_ASSERT(pMultiCellDataBank);

    pMultiCellAnim->multiCellInstance.mcType = NNS_G2D_MCTYPE_SHARE_CELLANIM;
    {
        NNSG2dMultiCellInstance * pMCInst = &pMultiCellAnim->multiCellInstance;

        pMCInst->pAnimDataBank = pAnimBank;

        pMCInst->pCellAnimInstasnces = (void *)pWork;

        {
            u16 i;
            const u16 numCellAnim
                = GetMCBankNumCellAnimRequired_(pMultiCellDataBank);
            NNSG2dMCCellAnimation * pMCCellAnim
                = (NNSG2dMCCellAnimation *)pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < numCellAnim; i++ ) {
                NNS_G2dInitCellAnimation(
                    &pMCCellAnim[i].cellAnim,
                    NNS_G2dGetAnimSequenceByIdx(pAnimBank, 0),
                    pCellDataBank
                );

                pMCCellAnim[i].bInited = TRUE;
            }
        }
    }
}

void NNS_G2dSetAnimSequenceToMCAnimation (NNSG2dMultiCellAnimation * pMultiCellAnim, const NNSG2dAnimSequence * pAnimSeq) {
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);
    NNS_G2D_NULL_ASSERT(pMultiCellAnim->pMultiCellDataBank);

    NNS_G2D_NULL_ASSERT(pAnimSeq);
    NNS_G2D_ASSERTMSG(
        NNS_G2dGetAnimSequenceAnimType(pAnimSeq)
        == NNS_G2D_ANIMATIONTYPE_MULTICELLLOCATION,
        "NNSG2dAnimationType must be MultiCellLocation."
    );

    NNS_G2dBindAnimCtrl(&pMultiCellAnim->animCtrl, pAnimSeq);

    pMultiCellAnim->totalVideoFrame = 0;

    ApplyCurrentAnimResult_(pMultiCellAnim);
}

void NNS_G2dInitMCAnimationInstance (NNSG2dMultiCellAnimation * pMultiCellAnim, void * pWork, const NNSG2dCellAnimBankData * pAnimBank, const NNSG2dCellDataBank * pCellDataBank, const NNSG2dMultiCellDataBank * pMultiCellDataBank, NNSG2dMCType mcType) {
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);
    NNS_G2D_NULL_ASSERT(pWork);
    NNS_G2D_NULL_ASSERT(pAnimBank);
    NNS_G2D_NULL_ASSERT(pCellDataBank);
    NNS_G2D_NULL_ASSERT(pMultiCellDataBank);

    if (mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        InitMCAnimation_SharingCellAnim_(
            pMultiCellAnim,
            pWork,
            pAnimBank,
            pCellDataBank,
            pMultiCellDataBank
        );
    } else {
        const u16 numNode
            = NNS_G2dGetMCBankNumNodesRequired(pMultiCellDataBank);
        NNSG2dNode * pNodeArray
            = pWork;
        NNSG2dCellAnimation * pCellAnimArray
            = (NNSG2dCellAnimation *)(pNodeArray + numNode);

        InitMCAnimation_(
            pMultiCellAnim,
            pNodeArray,
            pCellAnimArray,
            numNode,
            pAnimBank,
            pCellDataBank,
            pMultiCellDataBank
        );
    }

    NNS_G2dInitAnimCtrl(&pMultiCellAnim->animCtrl);
    pMultiCellAnim->pMultiCellDataBank = pMultiCellDataBank;
    NNSi_G2dSrtcInitControl(&pMultiCellAnim->srtCtrl, NNS_G2D_SRTCONTROLTYPE_SRT);
    pMultiCellAnim->totalVideoFrame = 0;
}

u16 NNS_G2dGetMCNumNodesRequired (const NNSG2dMultiCellAnimSequence * pMultiCellSeq, const NNSG2dMultiCellDataBank * pMultiCellDataBank) {
    NNS_G2D_NULL_ASSERT(pMultiCellSeq);
    NNS_G2D_NULL_ASSERT(pMultiCellDataBank);
    NNS_G2D_ASSERTMSG(
        NNS_G2dGetAnimSequenceAnimType(pMultiCellSeq)
        == NNS_G2D_ANIMATIONTYPE_MULTICELLLOCATION,
        "NNSG2dAnimationType must be MultiCellLocation."
    );

    {
        const NNSG2dMultiCellData * pMCell = NULL;
        u16 maxNumNode = 0;

        u16 i;
        const NNSG2dAnimDataSRT * pAnmFrm;
        for ( i = 0; i < pMultiCellSeq->numFrames; i++ ) {
            pAnmFrm = (const NNSG2dAnimDataSRT *)
                      pMultiCellSeq->pAnmFrameArray[i].pContent;

            pMCell = NNS_G2dGetMultiCellDataByIdx(
                pMultiCellDataBank,
                pAnmFrm->index
            );
            NNS_G2D_NULL_ASSERT(pMCell);

            if (pMCell->numNodes > maxNumNode) {
                maxNumNode = pMCell->numNodes;
            }
        }
        return maxNumNode;
    }
}

u32 NNS_G2dGetMCWorkAreaSize (const NNSG2dMultiCellDataBank * pMultiCellDataBank, NNSG2dMCType mcType) {
    if (mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        return sizeof(NNSG2dMCCellAnimation)
               * GetMCBankNumCellAnimRequired_(pMultiCellDataBank);
    } else {
        return (sizeof(NNSG2dNode) + sizeof(NNSG2dCellAnimation))
               * NNS_G2dGetMCBankNumNodesRequired(pMultiCellDataBank);
    }
}

u16 NNS_G2dGetMCBankNumNodesRequired (const NNSG2dMultiCellDataBank * pMultiCellDataBank) {
    NNS_G2D_NULL_ASSERT(pMultiCellDataBank);
    {
        const NNSG2dMultiCellData * pMCell = NULL;
        u16 maxNumNode = 0;
        u16 i;

        for ( i = 0; i < pMultiCellDataBank->numMultiCellData; i++ ) {
            pMCell = NNS_G2dGetMultiCellDataByIdx(pMultiCellDataBank, i);
            NNS_G2D_NULL_ASSERT(pMCell);

            if (pMCell->numNodes > maxNumNode) {
                maxNumNode = pMCell->numNodes;
            }
        }
        return maxNumNode;
    }
}

void NNS_G2dTickMCInstance (NNSG2dMultiCellInstance * pMCellInst, fx32 frames) {
    if (pMCellInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        u16 i;
        NNSG2dMCCellAnimation * pCellAnimArray = pMCellInst->pCellAnimInstasnces;

        for ( i = 0; i < pMCellInst->pCurrentMultiCell->numCellAnim; i++ ) {
            NNS_G2dTickCellAnimation(&pCellAnimArray[i].cellAnim, frames);
        }
    } else {
        u16 i;
        NNSG2dNode * pNodeArray = NULL;

        NNS_G2D_NULL_ASSERT(pMCellInst);
        NNS_G2D_NULL_ASSERT(pMCellInst->pCurrentMultiCell);

        pNodeArray = (NNSG2dNode *)(pMCellInst->pCellAnimInstasnces);

        for ( i = 0; i < pMCellInst->pCurrentMultiCell->numNodes; i++ ) {
            NNS_G2D_ASSERT(pNodeArray[i].type == NNS_G2D_NODETYPE_CELL);
            NNS_G2dTickCellAnimation((NNSG2dCellAnimation *)pNodeArray[i].pContent, frames);
        }
    }
}

void NNS_G2dTickMCAnimation (NNSG2dMultiCellAnimation * pMultiCellAnim, fx32 frames) {
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);

    {
        const u16 currentAnimFrameFrames = pMultiCellAnim->animCtrl.pCurrent->frames;

        if (NNS_G2dTickAnimCtrl(&pMultiCellAnim->animCtrl, frames)) {
            pMultiCellAnim->totalVideoFrame += currentAnimFrameFrames;

            ApplyCurrentAnimResult_(pMultiCellAnim);
        } else {
            NNS_G2dTickMCInstance(&pMultiCellAnim->multiCellInstance, frames);
        }
    }
}

void NNS_G2dSetMCAnimationCurrentFrame (NNSG2dMultiCellAnimation * pMultiCellAnim, u16 frameIndex) {
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);

    if (NNS_G2dSetAnimCtrlCurrentFrame(&pMultiCellAnim->animCtrl, frameIndex)) {
        ApplyCurrentAnimResult_(pMultiCellAnim);
    }
}

void NNS_G2dSetMCAnimationCellAnimFrame (NNSG2dMultiCellAnimation * pMultiCellAnim, u16 caFrameIndex) {
    u16 i;
    NNSG2dMultiCellInstance * pMCInst = NULL;

    NNS_G2D_NULL_ASSERT(pMultiCellAnim);

    pMCInst = &pMultiCellAnim->multiCellInstance;

    if (pMCInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        NNSG2dMCCellAnimation * pCellAnimArray = (NNSG2dMCCellAnimation *)pMCInst->pCellAnimInstasnces;
        const int numCellAnm = pMCInst->pCurrentMultiCell->numCellAnim;

        for ( i = 0; i < numCellAnm; i++ ) {
            NNSG2dCellAnimation * pCell = &pCellAnimArray[i].cellAnim;
            NNS_G2dSetCellAnimationCurrentFrame(pCell, caFrameIndex);
        }
    } else {
        NNSG2dNode * pNodeArray = (NNSG2dNode *)(pMCInst->pCellAnimInstasnces);
        const int numCellAnm = pMCInst->pCurrentMultiCell->numNodes;

        for ( i = 0; i < numCellAnm; i++ ) {
            NNSG2dCellAnimation * pCell = (NNSG2dCellAnimation *)pNodeArray[i].pContent;
            NNS_G2dSetCellAnimationCurrentFrame(pCell, caFrameIndex);
        }
    }
}

void NNS_G2dSetMCAnimationSpeed (NNSG2dMultiCellAnimation * pMultiCellAnim, fx32 speed) {
    NNS_G2D_NULL_ASSERT(pMultiCellAnim);
    {
        NNSG2dMultiCellInstance * pMCellInst = &pMultiCellAnim->multiCellInstance;

        if (pMCellInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
            u16 i;

            NNSG2dMCCellAnimation * pCellAnimArray = pMCellInst->pCellAnimInstasnces;
            NNS_G2dSetAnimCtrlSpeed(&pMultiCellAnim->animCtrl, speed);

            for ( i = 0; i < pMCellInst->pCurrentMultiCell->numCellAnim; i++ ) {
                NNS_G2dSetCellAnimationSpeed(&pCellAnimArray[i].cellAnim, speed);
            }
        } else {
            u16 i = 0;
            NNSG2dNode * pNode = (NNSG2dNode *)pMultiCellAnim->multiCellInstance.pCellAnimInstasnces;

            NNS_G2D_NULL_ASSERT(pMultiCellAnim);

            NNS_G2dSetAnimCtrlSpeed(&pMultiCellAnim->animCtrl, speed);

            for ( i = 0; i < pMCellInst->pCurrentMultiCell->numNodes; i++ ) {
                NNS_G2D_ASSERT(pNode[i].type == NNS_G2D_NODETYPE_CELL);
                NNS_G2dSetCellAnimationSpeed((NNSG2dCellAnimation *)pNode[i].pContent, speed);
            }
        }
    }
}

void NNS_G2dResetMCCellAnimationAll (NNSG2dMultiCellInstance * pMCInst) {
    u16 i = 0;
    NNS_G2D_NULL_ASSERT(pMCInst);
    {
        if (pMCInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
            NNSG2dMCCellAnimation * pCellAnimArray = pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < pMCInst->pCurrentMultiCell->numCellAnim; i++ ) {
                NNS_G2dSetCellAnimationCurrentFrame(&pCellAnimArray[i].cellAnim, 0);
            }
        } else {
            NNSG2dNode * pNode = (NNSG2dNode *)pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < pMCInst->pCurrentMultiCell->numNodes; i++ ) {
                NNS_G2D_ASSERT(pNode[i].type == NNS_G2D_NODETYPE_CELL);
                NNS_G2dSetCellAnimationCurrentFrame((NNSG2dCellAnimation *)pNode[i].pContent, 0);
            }
        }
    }
}

void NNS_G2dStartMCCellAnimationAll (NNSG2dMultiCellInstance * pMCInst) {
    u16 i = 0;
    NNSG2dAnimController * pAnmCtrl = NULL;
    NNS_G2D_NULL_ASSERT(pMCInst);
    {
        if (pMCInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
            NNSG2dMCCellAnimation * pCellAnimArray = pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < pMCInst->pCurrentMultiCell->numCellAnim; i++ ) {
                pAnmCtrl = NNS_G2dGetCellAnimationAnimCtrl(&pCellAnimArray[i].cellAnim);

                NNS_G2dStartAnimCtrl(pAnmCtrl);
            }
        } else {
            NNSG2dNode * pNode = (NNSG2dNode *)pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < pMCInst->pCurrentMultiCell->numNodes; i++ ) {
                NNS_G2D_ASSERT(pNode[i].type == NNS_G2D_NODETYPE_CELL);
                pAnmCtrl = NNS_G2dGetCellAnimationAnimCtrl((NNSG2dCellAnimation *)pNode[i].pContent);

                NNS_G2dStartAnimCtrl(pAnmCtrl);
            }
        }
    }
}

void NNS_G2dRestartMCAnimation (NNSG2dMultiCellAnimation * pMultiCellAnim) {
    u16 i = 0;
    NNSG2dMultiCellInstance * pMCInst = &pMultiCellAnim->multiCellInstance;
    NNSG2dAnimController * pMCAnmCtrl = NNS_G2dGetMCAnimAnimCtrl(pMultiCellAnim);

    pMultiCellAnim->totalVideoFrame = 0;

    NNS_G2dSetAnimSequenceToMCAnimation(
        pMultiCellAnim,
        NNS_G2dGetAnimCtrlCurrentAnimSequence(pMCAnmCtrl)
    );
    NNS_G2dStartAnimCtrl(pMCAnmCtrl);

    NNS_G2D_NULL_ASSERT(pMCInst);
    {
        if (pMCInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
            NNSG2dMCCellAnimation * pCellAnimArray = pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < pMCInst->pCurrentMultiCell->numCellAnim; i++ ) {
                NNS_G2dRestartCellAnimation(&pCellAnimArray[i].cellAnim);
            }
        } else {
            NNSG2dNode * pNode = (NNSG2dNode *)pMCInst->pCellAnimInstasnces;

            for ( i = 0; i < pMCInst->pCurrentMultiCell->numNodes; i++ ) {
                NNS_G2D_ASSERT(pNode[i].type == NNS_G2D_NODETYPE_CELL);

                NNS_G2dRestartCellAnimation((NNSG2dCellAnimation *)pNode[i].pContent);
            }
        }
    }
}

u16 NNS_G2dMakeSimpleMultiCellToOams (GXOamAttr * pDstOams, u16 numDstOams, const NNSG2dMultiCellInstance * pMCellInst, const MtxFx22 * pMtxSR, const NNSG2dFVec2 * pBaseTrans, u16 affineIndex, BOOL bDoubleAffine) {
    if (pMCellInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        return MakeSimpleMultiCellToOams_ShareCellAnims_(
            pDstOams,
            numDstOams,
            pMCellInst,
            pMtxSR,
            pBaseTrans,
            affineIndex,
            bDoubleAffine
        );
    } else {
        return MakeSimpleMultiCellToOams_(
            pDstOams,
            numDstOams,
            pMCellInst,
            pMtxSR,
            pBaseTrans,
            affineIndex,
            bDoubleAffine
        );
    }
}

void NNS_G2dTraverseMCCellAnims (NNSG2dMultiCellInstance * pMCellInst, NNSG2dMCTraverseCellAnimCallBack pCBFunc, u32 userParamater) {
    BOOL bContinue = TRUE;
    if (pMCellInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
        u16 i;
        NNSG2dMCCellAnimation * pCellAnimArray = pMCellInst->pCellAnimInstasnces;

        for ( i = 0; i < pMCellInst->pCurrentMultiCell->numCellAnim; i++ ) {
            bContinue = (*pCBFunc)(userParamater, &pCellAnimArray[i].cellAnim, i);

            if (!bContinue) {
                break;
            }
        }
    } else {
        u16 i;
        NNSG2dNode * pNodeArray = NULL;

        NNS_G2D_NULL_ASSERT(pMCellInst);
        NNS_G2D_NULL_ASSERT(pMCellInst->pCurrentMultiCell);

        pNodeArray = (NNSG2dNode *)(pMCellInst->pCellAnimInstasnces);

        for ( i = 0; i < pMCellInst->pCurrentMultiCell->numNodes; i++ ) {
            NNS_G2D_ASSERT(pNodeArray[i].type == NNS_G2D_NODETYPE_CELL);
            bContinue = (*pCBFunc)(userParamater, (NNSG2dCellAnimation *)pNodeArray[i].pContent, i);

            if (!bContinue) {
                break;
            }
        }
    }
}

void NNS_G2dTraverseMCNodes (NNSG2dMultiCellInstance * pMCellInst, NNSG2dMCTraverseNodeCallBack pCBFunc, u32 userParamater) {
    NNS_G2D_NULL_ASSERT(pMCellInst);
    NNS_G2D_NULL_ASSERT(pMCellInst->pCurrentMultiCell);
    {
        u16 i;
        const NNSG2dMultiCellData * pMCData = pMCellInst->pCurrentMultiCell;
        const u16 numNode = pMCData->numNodes;
        BOOL bContinue = TRUE;

        if (pMCellInst->mcType == NNS_G2D_MCTYPE_SHARE_CELLANIM) {
            NNSG2dMCCellAnimation * pMCCellAnimArray
                = (NNSG2dMCCellAnimation *)pMCellInst->pCellAnimInstasnces;

            for ( i = 0; i < numNode; i++ ) {
                const NNSG2dMultiCellHierarchyData * pNodeData = &pMCData->pHierDataArray[i];

                const u16 cellAnimIdx = NNSi_G2dGetMC2NodeCellAinmIdx(pNodeData);

                bContinue = (*pCBFunc)(
                    userParamater,
                    pNodeData,
                    &pMCCellAnimArray[cellAnimIdx].cellAnim,
                    i
                );
                if (!bContinue) {
                    break;
                }
            }
        } else {
            const NNSG2dNode * pNode
                = (const NNSG2dNode *)pMCellInst->pCellAnimInstasnces;

            for ( i = 0; i < numNode; i++ ) {
                const NNSG2dMultiCellHierarchyData * pNodeData = &pMCData->pHierDataArray[i];

                bContinue = (*pCBFunc)(
                    userParamater,
                    pNodeData,
                    pNode[i].pContent,
                    i
                );

                if (!bContinue) {
                    break;
                }
            }
        }
    }
}

void NNS_G2dInitMCAnimation (NNSG2dMultiCellAnimation * pMultiCellAnim, NNSG2dNode * pNodeArray, NNSG2dCellAnimation * pCellAnim, u16 numNode, const NNSG2dCellAnimBankData * pAnimBank, const NNSG2dCellDataBank * pCellDataBank, const NNSG2dMultiCellDataBank * pMultiCellDataBank) {
    InitMCAnimation_(
        pMultiCellAnim,
        pNodeArray,
        pCellAnim,
        numNode,
        pAnimBank,
        pCellDataBank,
        pMultiCellDataBank
    );
}

void NNS_G2dInitMCInstance (NNSG2dMultiCellInstance * pMultiCell, NNSG2dNode * pNodeArray, NNSG2dCellAnimation * pCellAnim, u16 numNode, const NNSG2dCellAnimBankData * pAnimBank, const NNSG2dCellDataBank * pCellDataBank) {
    InitMCInstance_
    (
        pMultiCell,
        pNodeArray,
        pCellAnim,
        numNode,
        pAnimBank,
        pCellDataBank
    );
}

BOOL NNS_G2dSetMCDataToMCInstance (NNSG2dMultiCellInstance * pMCInst, const NNSG2dMultiCellData * pMcData) {
    SetMCDataToMCInstanceImpl_(pMCInst, pMcData, 0);
    return TRUE;
}
