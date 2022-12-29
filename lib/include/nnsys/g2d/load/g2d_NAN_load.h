#ifndef NNS_G2D_NAN_LOAD_H_
#define NNS_G2D_NAN_LOAD_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Data.h>

BOOL NNS_G2dGetUnpackedAnimBank(void * pNanrFile, NNSG2dAnimBankData ** ppAnimBank);
BOOL NNS_G2dGetUnpackedMCAnimBank(void * pNanrFile, NNSG2dAnimBankData ** ppAnimBank);

void NNS_G2dUnpackNAN(NNSG2dAnimBankData * pData);

NNS_G2D_INLINE u16 NNS_G2dGetNumAnimSequence (const NNSG2dAnimBankData * pAnimBank)
{
    NNS_G2D_NULL_ASSERT(pAnimBank);
    return pAnimBank->numSequences;
}

const NNSG2dAnimSequenceData * NNS_G2dGetAnimSequenceByIdx(const NNSG2dAnimBankData * pAnimBank, u16 idx);

const char * NNS_G2dGetAnimSequenceTypeStr(NNSG2dAnimationType);

#ifdef __SNC__
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimContents (const void * p1, NNSG2dAnimationElement p2) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimFrame (const NNSG2dAnimFrameData * p1, NNSG2dAnimationElement p2) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimSequence (const NNSG2dAnimSequenceData * p1) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimBank (const NNSG2dAnimBankData * p1) NNS_G2D_DEBUG_FUNC_DECL_END
#else
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimContents (const void *, NNSG2dAnimationElement) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimFrame (const NNSG2dAnimFrameData *, NNSG2dAnimationElement) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimSequence (const NNSG2dAnimSequenceData *) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintAnimBank (const NNSG2dAnimBankData *) NNS_G2D_DEBUG_FUNC_DECL_END
#endif

#ifdef __cplusplus
}
#endif

#endif
