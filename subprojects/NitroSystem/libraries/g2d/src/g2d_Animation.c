#include <nnsys/g2d/g2d_Animation.h>

static NNS_G2D_INLINE const NNSG2dAnimFrame * GetFrameBegin_ (const NNSG2dAnimSequence * pSequence) {
    NNS_G2D_NULL_ASSERT(pSequence);
    return pSequence->pAnmFrameArray;
}

static NNS_G2D_INLINE const NNSG2dAnimFrame * GetFrameEnd_ (const NNSG2dAnimSequence * pSequence) {
    NNS_G2D_NULL_ASSERT(pSequence);
    return pSequence->pAnmFrameArray + (pSequence->numFrames);
}

static NNS_G2D_INLINE const NNSG2dAnimFrame * GetFrameLoopBegin_ (const NNSG2dAnimSequence * pSequence) {
    NNS_G2D_NULL_ASSERT(pSequence);

    return pSequence->pAnmFrameArray + pSequence->loopStartFrameIdx;
}

static NNS_G2D_INLINE u16 GetCurrentFrameIdx_ (const NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    return (u16)(((u32)pAnimCtrl->pCurrent - (u32)pAnimCtrl->pAnimSequence->pAnmFrameArray)
                 / sizeof(NNSG2dAnimFrameData));
}

static NNS_G2D_INLINE NNSG2dAnimationPlayMode GetAnimationPlayMode_ (const NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);

    if (pAnimCtrl->overriddenPlayMode != NNS_G2D_ANIMATIONPLAYMODE_INVALID) {
        return pAnimCtrl->overriddenPlayMode;
    } else {
        return pAnimCtrl->pAnimSequence->playMode;
    }
}

static NNS_G2D_INLINE BOOL IsLoopAnimSequence_ (const NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);

    {
        const NNSG2dAnimationPlayMode playMode = GetAnimationPlayMode_(pAnimCtrl);

        return (playMode == NNS_G2D_ANIMATIONPLAYMODE_FORWARD_LOOP ||
                playMode == NNS_G2D_ANIMATIONPLAYMODE_REVERSE_LOOP) ? TRUE : FALSE;
    }
}

static NNS_G2D_INLINE BOOL IsReversePlayAnim_ (const NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);

    {
        const NNSG2dAnimationPlayMode playMode = GetAnimationPlayMode_(pAnimCtrl);

        return (playMode == NNS_G2D_ANIMATIONPLAYMODE_REVERSE ||
                playMode == NNS_G2D_ANIMATIONPLAYMODE_REVERSE_LOOP) ? TRUE : FALSE;
    }
}

static NNS_G2D_INLINE BOOL IsAnimCtrlMovingForward_ (const NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    return (pAnimCtrl->speed > 0) ^ (pAnimCtrl->bReverse) ? TRUE : FALSE;
}

static NNS_G2D_INLINE BOOL ShouldAnmCtrlMoveNext_ (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pCurrent);

    if (pAnimCtrl->bActive &&
        (pAnimCtrl->currentTime >= FX32_ONE * (int)pAnimCtrl->pCurrent->frames)) {
        return TRUE;
    }
    return FALSE;
}

static NNS_G2D_INLINE void CallbackFuncHandling_ (const NNSG2dCallBackFunctor * pFunctor, u16 currentFrameIdx) {
    NNS_G2D_NULL_ASSERT(pFunctor);

    switch (pFunctor->type) {
    case NNS_G2D_ANMCALLBACKTYPE_SPEC_FRM:
        if (currentFrameIdx == pFunctor->frameIdx) {
            (*pFunctor->pFunc)(pFunctor->param, currentFrameIdx);
        }
        break;

    case NNS_G2D_ANMCALLBACKTYPE_EVER_FRM:
        (*pFunctor->pFunc)(pFunctor->param, currentFrameIdx);
        break;
    }
}

void NNSi_G2dCallbackFuncHandling (const NNSG2dCallBackFunctor * pFunctor, u16 currentFrameIdx) {
    CallbackFuncHandling_(pFunctor, currentFrameIdx);
}

static NNS_G2D_INLINE BOOL IsReachStartEdge_ (const NNSG2dAnimController * pAnimCtrl, const NNSG2dAnimFrame * pFrame) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pFrame);

    return (pFrame <= (GetFrameLoopBegin_(pAnimCtrl->pAnimSequence) - 1)) ? TRUE : FALSE;
}

static NNS_G2D_INLINE BOOL IsReachEdge_ (const NNSG2dAnimController * pAnimCtrl, const NNSG2dAnimFrame * pFrame) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pFrame);

    if (IsAnimCtrlMovingForward_(pAnimCtrl)) {
        return (pFrame >= GetFrameEnd_(pAnimCtrl->pAnimSequence)) ? TRUE : FALSE;
    } else {
        return IsReachStartEdge_(pAnimCtrl, pFrame);
    }
}

static NNS_G2D_INLINE void MoveNext_ (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    if (IsAnimCtrlMovingForward_(pAnimCtrl)) {
        pAnimCtrl->pCurrent++;
    } else {
        pAnimCtrl->pCurrent--;
    }
}

static NNS_G2D_INLINE void SequenceEdgeHandleCommon_ (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    if (pAnimCtrl->callbackFunctor.type == NNS_G2D_ANMCALLBACKTYPE_LAST_FRM) {
        NNS_G2D_NULL_ASSERT(pAnimCtrl->callbackFunctor.pFunc);
        (*pAnimCtrl->callbackFunctor.pFunc)(pAnimCtrl->callbackFunctor.param, pAnimCtrl->currentTime);
    }

    if (!IsLoopAnimSequence_(pAnimCtrl)) {
        NNS_G2dStopAnimCtrl(pAnimCtrl);
    } else {
        NNS_G2dResetAnimCtrlState(pAnimCtrl);
    }
}

static NNS_G2D_INLINE void SequenceEdgeHandleReverse_ (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    pAnimCtrl->bReverse = pAnimCtrl->bReverse ^ TRUE;

    if (IsReachStartEdge_(pAnimCtrl, pAnimCtrl->pCurrent)) {
        SequenceEdgeHandleCommon_(pAnimCtrl);
    }
}

static NNS_G2D_INLINE void SequenceEdgeHandleNormal_ (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    SequenceEdgeHandleCommon_(pAnimCtrl);
}

static NNS_G2D_INLINE void ValidateAnimFrame_ (NNSG2dAnimController * pAnimCtrl, const NNSG2dAnimFrame ** pFrame) {
    if (*pFrame > GetFrameEnd_(pAnimCtrl->pAnimSequence) - 1) {
        *pFrame = GetFrameEnd_(pAnimCtrl->pAnimSequence) - 1;
    } else if (*pFrame < GetFrameBegin_(pAnimCtrl->pAnimSequence)) {
        *pFrame = GetFrameBegin_(pAnimCtrl->pAnimSequence);
    }
}

static void SequenceEdgeHandle_ (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    if (IsReversePlayAnim_(pAnimCtrl)) {
        SequenceEdgeHandleReverse_(pAnimCtrl);
    } else {
        SequenceEdgeHandleNormal_(pAnimCtrl);
    }

    ValidateAnimFrame_(pAnimCtrl, &pAnimCtrl->pCurrent);
}

static BOOL SetAnimCtrlCurrentFrameImpl_ (NNSG2dAnimController * pAnimCtrl, u16 index) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);

    if (index < pAnimCtrl->pAnimSequence->numFrames) {
        pAnimCtrl->pCurrent = &pAnimCtrl->pAnimSequence->pAnmFrameArray[index];
        if (pAnimCtrl->pCurrent->frames != 0) {
            pAnimCtrl->pActiveCurrent = pAnimCtrl->pCurrent;
        }
        return TRUE;
    }
    return FALSE;
}

void * NNS_G2dGetAnimCtrlCurrentElement (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pActiveCurrent);
    NNS_G2D_NULL_ASSERT((void *)pAnimCtrl->pActiveCurrent->pContent);

    return (void *)pAnimCtrl->pActiveCurrent->pContent;
}

void * NNS_G2dGetAnimCtrlNextElement (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    {
        const NNSG2dAnimFrame * pNext = NULL;

        if (IsAnimCtrlMovingForward_(pAnimCtrl)) {
            pNext = pAnimCtrl->pCurrent + 1;
        } else {
            pNext = pAnimCtrl->pCurrent - 1;
        }

        ValidateAnimFrame_(pAnimCtrl, &pNext);
        NNS_G2D_NULL_ASSERT(pNext->pContent);

        return (void *)pNext->pContent;
    }
}

fx32 NNS_G2dGetAnimCtrlNormalizedTime (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pCurrent);

    return FX_Div(pAnimCtrl->currentTime, FX32_ONE * pAnimCtrl->pCurrent->frames);
}

BOOL NNS_G2dTickAnimCtrl (NNSG2dAnimController * pAnimCtrl, fx32 frames) {
    BOOL bChangeFrame = FALSE;

    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pCurrent);
    NNS_G2D_ASSERTMSG(frames >= 0, "frames must be Greater than zero");

    if (pAnimCtrl->bActive != TRUE) {
        return FALSE;
    }

    pAnimCtrl->currentTime += abs(FX_Mul(pAnimCtrl->speed, frames));

    while (ShouldAnmCtrlMoveNext_(pAnimCtrl)) {
        bChangeFrame = TRUE;

        pAnimCtrl->currentTime -= FX32_ONE * (int)pAnimCtrl->pCurrent->frames;
        MoveNext_(pAnimCtrl);

        if (IsReachEdge_(pAnimCtrl, pAnimCtrl->pCurrent)) {
            SequenceEdgeHandle_(pAnimCtrl);
        }

        if (pAnimCtrl->pCurrent->frames != 0) {
            pAnimCtrl->pActiveCurrent = pAnimCtrl->pCurrent;
        }

        if (pAnimCtrl->callbackFunctor.type != NNS_G2D_ANMCALLBACKTYPE_NONE) {
            CallbackFuncHandling_(&pAnimCtrl->callbackFunctor, GetCurrentFrameIdx_(pAnimCtrl));
        }
    }
    return bChangeFrame;
}

BOOL NNS_G2dSetAnimCtrlCurrentFrame (NNSG2dAnimController * pAnimCtrl, u16 index) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);
    {
        const BOOL result = SetAnimCtrlCurrentFrameImpl_(pAnimCtrl, index);

        if (result) {
            pAnimCtrl->currentTime = 0;
        }
        return result;
    }
}

BOOL NNS_G2dSetAnimCtrlCurrentFrameNoResetCurrentTime (NNSG2dAnimController * pAnimCtrl, u16 index) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);

    return SetAnimCtrlCurrentFrameImpl_(pAnimCtrl, index);
}

u16 NNS_G2dGetAnimCtrlCurrentFrame (const NNSG2dAnimController * pAnimCtrl) {
    return GetCurrentFrameIdx_(pAnimCtrl);
}

void NNS_G2dInitAnimCtrl (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    NNS_G2dInitAnimCallBackFunctor(&pAnimCtrl->callbackFunctor);

    pAnimCtrl->pCurrent = NULL;
    pAnimCtrl->pActiveCurrent = NULL;

    pAnimCtrl->bReverse = FALSE;
    pAnimCtrl->bActive = TRUE;

    pAnimCtrl->currentTime = 0;
    pAnimCtrl->speed = FX32_ONE;

    pAnimCtrl->overriddenPlayMode = NNS_G2D_ANIMATIONPLAYMODE_INVALID;
    pAnimCtrl->pAnimSequence = NULL;
}

void NNS_G2dInitAnimCtrlCallBackFunctor (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    NNS_G2dInitAnimCallBackFunctor(&pAnimCtrl->callbackFunctor);
}

void NNS_G2dInitAnimCallBackFunctor (NNSG2dCallBackFunctor * pCallBack) {
    NNS_G2D_NULL_ASSERT(pCallBack);

    pCallBack->type = NNS_G2D_ANMCALLBACKTYPE_NONE;
    pCallBack->param = 0x0;
    pCallBack->pFunc = NULL;
    pCallBack->frameIdx = 0;
}

void NNS_G2dResetAnimCtrlState (NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    if (IsAnimCtrlMovingForward_(pAnimCtrl)) {
        pAnimCtrl->pCurrent = GetFrameLoopBegin_(pAnimCtrl->pAnimSequence);
    } else {
        pAnimCtrl->pCurrent = GetFrameEnd_(pAnimCtrl->pAnimSequence) - 1;
    }

    pAnimCtrl->pActiveCurrent = pAnimCtrl->pCurrent;

    pAnimCtrl->currentTime = 0;

    (void)NNS_G2dTickAnimCtrl(pAnimCtrl, 0);
}

void NNS_G2dBindAnimCtrl (NNSG2dAnimController * pAnimCtrl, const NNSG2dAnimSequence * pAnimSequence) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimSequence);

    pAnimCtrl->pAnimSequence = pAnimSequence;

    NNS_G2dResetAnimCtrlState(pAnimCtrl);
}

void NNS_G2dSetAnimCtrlCallBackFunctor (NNSG2dAnimController * pAnimCtrl, NNSG2dAnmCallbackType type, u32 param, NNSG2dAnmCallBackPtr pFunc) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT((void *)pFunc);
    NNS_G2D_MINMAX_ASSERT(type, NNS_G2D_ANMCALLBACKTYPE_NONE, AnmCallbackType_MAX);
    NNS_G2D_ASSERTMSG(
        type != NNS_G2D_ANMCALLBACKTYPE_SPEC_FRM,
        "Use NNS_G2dSetAnimCtrlCallBackFunctorAtAnimFrame() instead."
    );

    pAnimCtrl->callbackFunctor.pFunc = pFunc;
    pAnimCtrl->callbackFunctor.param = param;
    pAnimCtrl->callbackFunctor.type = type;
    pAnimCtrl->callbackFunctor.frameIdx = 0;
}

void NNS_G2dSetAnimCtrlCallBackFunctorAtAnimFrame (NNSG2dAnimController * pAnimCtrl, u32 param, NNSG2dAnmCallBackPtr pFunc, u16 frameIdx) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT((void *)pFunc);

    pAnimCtrl->callbackFunctor.type = NNS_G2D_ANMCALLBACKTYPE_SPEC_FRM;

    pAnimCtrl->callbackFunctor.pFunc = pFunc;
    pAnimCtrl->callbackFunctor.param = param;
    pAnimCtrl->callbackFunctor.frameIdx = frameIdx;
}

BOOL NNSi_G2dIsAnimCtrlLoopAnim (const NNSG2dAnimController * pAnimCtrl) {
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_NULL_ASSERT(pAnimCtrl->pAnimSequence);

    return IsLoopAnimSequence_(pAnimCtrl);
}
