#ifndef NNS_G2D_ANIMATION_INLINE_H_
#define NNS_G2D_ANIMATION_INLINE_H_

#ifdef __cplusplus
extern "C" {
#endif

NNS_G2D_INLINE NNSG2dAnimationType NNS_G2dGetAnimCtrlType
(
    const NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    if (pAnimCtrl->pAnimSequence != NULL) {
        return NNS_G2dGetAnimSequenceAnimType(pAnimCtrl->pAnimSequence);
    } else {
        return NNS_G2D_ANIMATIONTYPE_MAX;
    }
}

NNS_G2D_INLINE void NNS_G2dSetAnimCtrlSpeed
(
    NNSG2dAnimController * pAnimCtrl,
    fx32 speed
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    pAnimCtrl->speed = speed;
}

NNS_G2D_INLINE fx32 NNS_G2dGetAnimCtrlSpeed
(
    const NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    return pAnimCtrl->speed;
}

NNS_G2D_INLINE void NNS_G2dStartAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    pAnimCtrl->bActive = TRUE;
}

NNS_G2D_INLINE void NNS_G2dStopAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    pAnimCtrl->bActive = FALSE;
}

NNS_G2D_INLINE BOOL NNS_G2dIsAnimCtrlActive
(
    const NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    return pAnimCtrl->bActive;
}

NNS_G2D_INLINE void NNS_G2dSetAnimCtrlPlayModeOverridden
(
    NNSG2dAnimController * pAnimCtrl,
    NNSG2dAnimationPlayMode playMode
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    NNS_G2D_MINMAX_ASSERT(playMode, NNS_G2D_ANIMATIONPLAYMODE_FORWARD,
                          NNS_G2D_ANIMATIONPLAYMODE_REVERSE_LOOP);

    pAnimCtrl->overriddenPlayMode = playMode;
}

NNS_G2D_INLINE void NNS_G2dResetAnimCtrlPlayModeOverridden
(
    NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    pAnimCtrl->overriddenPlayMode = NNS_G2D_ANIMATIONPLAYMODE_INVALID;
}

NNS_G2D_INLINE fx32 NNS_G2dGetAnimCtrlCurrentTime
(
    const NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    return pAnimCtrl->currentTime;
}

NNS_G2D_INLINE void NNS_G2dSetAnimCtrlCurrentTime
(
    NNSG2dAnimController * pAnimCtrl,
    fx32 time
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    pAnimCtrl->currentTime = time;
}

NNS_G2D_INLINE u16 NNS_G2dGetAnimCtrlCurrentElemIdxVal
(
    const NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);

    {
        const NNSG2dAnimData * pAnmRes
            = (const NNSG2dAnimData *)pAnimCtrl->pCurrent->pContent;

        return (*pAnmRes);
    }
}

NNS_G2D_INLINE const NNSG2dAnimSequence * NNS_G2dGetAnimCtrlCurrentAnimSequence
(
    const NNSG2dAnimController * pAnimCtrl
)
{
    NNS_G2D_NULL_ASSERT(pAnimCtrl);
    return pAnimCtrl->pAnimSequence;
}

#ifdef __cplusplus
}
#endif

#endif
