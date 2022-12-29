#ifndef NNS_G2D_ANIMATION_H_
#define NNS_G2D_ANIMATION_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Data.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dGetCurrentElement NNS_G2dGetAnimCtrlCurrentElement
#define NNS_G2dGetNextElement NNS_G2dGetAnimCtrlNextElement
#define NNS_G2dGetNormalizedTime NNS_G2dGetAnimCtrlNormalizedTime
#define NNS_G2dSetCallBackFunctor NNS_G2dSetAnimCtrlCallBackFunctor
#define NNS_G2dSetCallBackFunctorAtAnimFrame NNS_G2dSetAnimCtrlCallBackFunctorAtAnimFrame
#define NNS_G2dGetAnimSpeed NNS_G2dGetAnimCtrlSpeed
#define NNS_G2dSetAnimSpeed NNS_G2dSetAnimCtrlSpeed
#define NNS_G2dResetAnimationState NNS_G2dResetAnimCtrlState
#define NNS_G2dInitCallBackFunctor NNS_G2dInitAnimCallBackFunctor

#define NNS_G2dBindAnimController NNS_G2dBindAnimCtrl
#define NNS_G2dGetAnimControllerType NNS_G2dGetAnimCtrlType
#define NNS_G2dInitAnimController NNS_G2dInitAnimCtrl
#define NNS_G2dInitAnimControllerCallBackFunctor NNS_G2dInitAnimCtrlCallBackFunctor
#define NNS_G2dIsAnimControllerActive NNS_G2dIsAnimCtrlActive
#define NNS_G2dStartAnimController NNS_G2dStartAnimCtrl
#define NNS_G2dStopAnimController NNS_G2dStopAnimCtrl
#define NNS_G2dTickAnimController NNS_G2dTickAnimCtrl

#define NNS_G2D_ASSERT_ANIMATIONTYPE_VALID(val)   \
    NNS_G2D_MINMAX_ASSERT(val, NNS_G2D_ANIMATIONTYPE_CELL, NNS_G2D_ANIMATIONTYPE_MULTICELLLOCATION)

typedef NNSG2dAnimFrameData NNSG2dAnimFrame;

typedef NNSG2dAnimSequenceData NNSG2dAnimSequence;

typedef void (* NNSG2dAnmCallBackPtr)(u32 data, fx32 currentFrame);

typedef enum NNSG2dAnmCallbackType {
    NNS_G2D_ANMCALLBACKTYPE_NONE = 0,
    NNS_G2D_ANMCALLBACKTYPE_LAST_FRM,
    NNS_G2D_ANMCALLBACKTYPE_SPEC_FRM,
    NNS_G2D_ANMCALLBACKTYPE_EVER_FRM,
    AnmCallbackType_MAX
} NNSG2dAnmCallbackType;

typedef struct NNSG2dCallBackFunctor {
    NNSG2dAnmCallbackType type;
    u32 param;
    NNSG2dAnmCallBackPtr pFunc;
    u16 frameIdx;
    u16 pad16_;
} NNSG2dCallBackFunctor, NNSG2dAnimCallBackFunctor;

typedef struct NNSG2dAnimController {
    const NNSG2dAnimFrame * pCurrent;
    const NNSG2dAnimFrame * pActiveCurrent;

    BOOL bReverse;
    BOOL bActive;

    fx32 currentTime;
    fx32 speed;

    NNSG2dAnimationPlayMode overriddenPlayMode;

    const NNSG2dAnimSequence * pAnimSequence;
    NNSG2dAnimCallBackFunctor callbackFunctor;
} NNSG2dAnimController;

void NNSi_G2dCallbackFuncHandling
(
    const NNSG2dCallBackFunctor * pFunctor,
    u16 currentFrameIdx
);

BOOL NNS_G2dTickAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl,
    fx32 frames
);

BOOL NNS_G2dSetAnimCtrlCurrentFrame
(
    NNSG2dAnimController * pAnimCtrl,
    u16 index
);

BOOL NNS_G2dSetAnimCtrlCurrentFrameNoResetCurrentTime
(
    NNSG2dAnimController * pAnimCtrl,
    u16 index
);

u16 NNS_G2dGetAnimCtrlCurrentFrame
(
    const NNSG2dAnimController * pAnimCtrl
);

void NNS_G2dInitAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl
);

void NNS_G2dInitAnimCtrlCallBackFunctor
(
    NNSG2dAnimController * pAnimCtrl
);

void NNS_G2dInitAnimCallBackFunctor
(
    NNSG2dAnimCallBackFunctor * pCallBack
);

void NNS_G2dResetAnimCtrlState
(
    NNSG2dAnimController * pAnimCtrl
);

void NNS_G2dBindAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl,
    const NNSG2dAnimSequence * pAnimSequence
);

void * NNS_G2dGetAnimCtrlCurrentElement(NNSG2dAnimController * pAnimCtrl);
void * NNS_G2dGetAnimCtrlNextElement(NNSG2dAnimController * pAnimCtrl);
fx32 NNS_G2dGetAnimCtrlNormalizedTime(NNSG2dAnimController * pAnimCtrl);

void NNS_G2dSetAnimCtrlCallBackFunctor
(
    NNSG2dAnimController * pAnimCtrl,
    NNSG2dAnmCallbackType type,
    u32 param,
    NNSG2dAnmCallBackPtr pFunc
);

void NNS_G2dSetAnimCtrlCallBackFunctorAtAnimFrame
(
    NNSG2dAnimController * pAnimCtrl,
    u32 param,
    NNSG2dAnmCallBackPtr pFunc,
    u16 frameIdx
);

BOOL NNSi_G2dIsAnimCtrlLoopAnim(const NNSG2dAnimController * pAnimCtrl);

static NNSG2dAnimationType NNS_G2dGetAnimCtrlType
(
    const NNSG2dAnimController * pAnimCtrl
);

static void NNS_G2dSetAnimCtrlSpeed
(
    NNSG2dAnimController * pAnimCtrl,
    fx32 speed
);

static fx32 NNS_G2dGetAnimCtrlSpeed
(
    const NNSG2dAnimController * pAnimCtrl
);

static void NNS_G2dStartAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl
);

static void NNS_G2dStopAnimCtrl
(
    NNSG2dAnimController * pAnimCtrl
);

static BOOL NNS_G2dIsAnimCtrlActive
(
    const NNSG2dAnimController * pAnimCtrl
);

static void NNS_G2dSetAnimCtrlPlayModeOverridden
(
    NNSG2dAnimController * pAnimCtrl,
    NNSG2dAnimationPlayMode playMode
);

static void NNS_G2dResetAnimCtrlPlayModeOverridden
(
    NNSG2dAnimController * pAnimCtrl
);

static fx32 NNS_G2dGetAnimCtrlCurrentTime
(
    const NNSG2dAnimController * pAnimCtrl
);

static void NNS_G2dSetAnimCtrlCurrentTime
(
    NNSG2dAnimController * pAnimCtrl,
    fx32 time
);

static u16 NNS_G2dGetAnimCtrlCurrentElemIdxVal
(
    const NNSG2dAnimController * pAnimCtrl
);

static const NNSG2dAnimSequence *
NNS_G2dGetAnimCtrlCurrentAnimSequence
(
    const NNSG2dAnimController * pAnimCtrl
);

#ifdef __cplusplus
}
#endif

#include <nnsys/g2d/g2d_Animation_inline.h>
#endif
