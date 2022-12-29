#ifndef NNS_G2D_ANIM_DATA_H_
#define NNS_G2D_ANIM_DATA_H_

#include <nitro/types.h>
#include <nitro/fx/fx.h>

#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/fmt/g2d_Common_data.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_BINFILE_SIG_CELLANIM (u32)'NANR'
#define NNS_G2D_BINFILE_SIG_MULTICELLANIM (u32)'NMAR'

#define NNS_G2D_BLKSIG_ANIMBANK (u32)'ABNK'
#define NNS_G2D_USEREXBLK_ANMATTR (u32)'UAAT'

#define NNS_G2D_BINFILE_EXT_CELLANIM "NANR"
#define NNS_G2D_BINFILE_EXT_MULTICELLANIM "NMAR"

#define NNS_G2D_NANR_MAJOR_VER 1
#define NNS_G2D_NANR_MINOR_VER 0

#define NNS_G2D_ANIMTYPE_SHIFT 16
#define NNS_G2D_ANIMTYPE_MASK 0xFF00
#define NNS_G2D_ANIMELEM_MASK 0x00FF

typedef enum NNSG2dAnimationType {
    NNS_G2D_ANIMATIONTYPE_INVALID           = 0x0,
    NNS_G2D_ANIMATIONTYPE_CELL,
    NNS_G2D_ANIMATIONTYPE_MULTICELLLOCATION,
    NNS_G2D_ANIMATIONTYPE_MAX
} NNSG2dAnimationType;

typedef enum NNSG2dAnimationElement {
    NNS_G2D_ANIMELEMENT_INDEX           = 0x0,
    NNS_G2D_ANIMELEMENT_INDEX_SRT,
    NNS_G2D_ANIMELEMENT_INDEX_T,
    NNS_G2D_ANIMELEMENT_MAX
} NNSG2dAnimationElement;

typedef enum NNSG2dAnimationPlayMode {
    NNS_G2D_ANIMATIONPLAYMODE_INVALID = 0x0,
    NNS_G2D_ANIMATIONPLAYMODE_FORWARD,
    NNS_G2D_ANIMATIONPLAYMODE_FORWARD_LOOP,
    NNS_G2D_ANIMATIONPLAYMODE_REVERSE,
    NNS_G2D_ANIMATIONPLAYMODE_REVERSE_LOOP,
    NNS_G2D_ANIMATIONPLAYMODE_MAX
} NNSG2dAnimationPlayMode;

typedef       u16 NNSG2dAnimData;

typedef struct NNSG2dAnimDataSRT {
    u16 index;

    u16 rotZ;

    fx32 sx;
    fx32 sy;

    s16 px;
    s16 py;
} NNSG2dAnimDataSRT;

typedef struct NNSG2dAnimDataT {
    u16 index;
    u16 pad_;

    s16 px;
    s16 py;
} NNSG2dAnimDataT;

typedef struct NNSG2dAnimFrameData {
    void * pContent;
    u16 frames;
    u16 pad16;
} NNSG2dAnimFrameData;

typedef struct NNSG2dAnimSequenceData {
    u16 numFrames;
    u16 loopStartFrameIdx;

    u32 animType;

    NNSG2dAnimationPlayMode playMode;
    NNSG2dAnimFrameData * pAnmFrameArray;
} NNSG2dAnimSequenceData;

typedef struct NNSG2dAnimBankData {
    u16 numSequences;
    u16 numTotalFrames;
    NNSG2dAnimSequenceData * pSequenceArrayHead;
    NNSG2dAnimFrameData * pFrameArrayHead;
    void * pAnimContents;
    void * pStringBank;
    void * pExtendedData;
} NNSG2dAnimBankData;

typedef struct NNSG2dAnimBankDataBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dAnimBankData animBankData;
} NNSG2dAnimBankDataBlock;

typedef struct NNSG2dUserExAnimFrameAttr {
    u32 * pAttr;
} NNSG2dUserExAnimFrameAttr;

typedef struct NNSG2dUserExAnimSequenceAttr {
    u16 numFrames;
    u16 pad16;
    u32 * pAttr;
    NNSG2dUserExAnimFrameAttr * pAnmFrmAttrArray;
} NNSG2dUserExAnimSequenceAttr;

typedef struct NNSG2dUserExAnimAttrBank {
    u16 numSequences;
    u16 numAttribute;
    NNSG2dUserExAnimSequenceAttr * pAnmSeqAttrArray;
} NNSG2dUserExAnimAttrBank;

NNS_G2D_INLINE u32 NNSi_G2dMakeAnimType (NNSG2dAnimationType animType, NNSG2dAnimationElement elmType)
{
    return (u32)animType << NNS_G2D_ANIMTYPE_SHIFT | ((u32)elmType & NNS_G2D_ANIMELEM_MASK);
}

NNS_G2D_INLINE NNSG2dAnimationType NNSi_G2dGetAnimSequenceAnimType (u32 animType)
{
    return (NNSG2dAnimationType)(animType >> NNS_G2D_ANIMTYPE_SHIFT);
}

NNS_G2D_INLINE NNSG2dAnimationElement NNSi_G2dGetAnimSequenceElementType (u32 animType)
{
    return (NNSG2dAnimationElement)(animType & NNS_G2D_ANIMELEM_MASK);
}

NNS_G2D_INLINE NNSG2dAnimationType NNS_G2dGetAnimSequenceAnimType (const NNSG2dAnimSequenceData * pAnimSeq)
{
    return NNSi_G2dGetAnimSequenceAnimType(pAnimSeq->animType);
}

NNS_G2D_INLINE NNSG2dAnimationElement NNS_G2dGetAnimSequenceElementType (const NNSG2dAnimSequenceData * pAnimSeq)
{
    return NNSi_G2dGetAnimSequenceElementType(pAnimSeq->animType);
}

NNS_G2D_INLINE u32 NNS_G2dCalcAnimSequenceTotalVideoFrames
(
    const NNSG2dAnimSequenceData * pAnimSeq
)
{
    u32 i;
    u32 total = 0;

    for (i = 0; i < pAnimSeq->numFrames; i++) {
        total += pAnimSeq->pAnmFrameArray[i].frames;
    }
    return total;
}

#ifndef NNS_FROM_TOOL
NNS_G2D_INLINE u16 NNS_G2dGetAnimSequenceIndex
(
    const NNSG2dAnimBankData * pAnimBank,
    const NNSG2dAnimSequenceData * pAnimSeq
)
{
    return (u16)(
        ((u32)pAnimSeq - (u32)pAnimBank->pSequenceArrayHead)
        / (u32)sizeof(NNSG2dAnimSequenceData));
}
#else

#endif

NNS_G2D_INLINE const NNSG2dUserExAnimAttrBank * NNS_G2dGetUserExAnimAttrBank (const NNSG2dAnimBankData * pAnimBank)
{
    const NNSG2dUserExDataBlock * pBlk
        = NNSi_G2dGetUserExDataBlkByID(pAnimBank->pExtendedData,
                                       NNS_G2D_USEREXBLK_ANMATTR);

    if (pBlk != NULL) {
        return (const NNSG2dUserExAnimAttrBank *)(pBlk + 1);
    } else {
        return NULL;
    }
}

NNS_G2D_INLINE const NNSG2dUserExAnimSequenceAttr * NNS_G2dGetUserExAnimSequenceAttr
(
    const NNSG2dUserExAnimAttrBank * pAnimAttrBank,
    u16 idx
)
{
    NNS_G2D_NULL_ASSERT(pAnimAttrBank);

    if (idx < pAnimAttrBank->numSequences) {
        return &pAnimAttrBank->pAnmSeqAttrArray[idx];
    } else {
        return NULL;
    }
}

NNS_G2D_INLINE const NNSG2dUserExAnimFrameAttr * NNS_G2dGetUserExAnimFrameAttr
(
    const NNSG2dUserExAnimSequenceAttr * pAnimSeqAttr,
    u16 idx
)
{
    NNS_G2D_NULL_ASSERT(pAnimSeqAttr);

    if (pAnimSeqAttr->numFrames) {
        return &pAnimSeqAttr->pAnmFrmAttrArray[idx];
    } else {
        return NULL;
    }
}

NNS_G2D_INLINE u32 NNS_G2dGetUserExAnimSeqAttrValue
(
    const NNSG2dUserExAnimSequenceAttr * pAnimSeqAttr
)
{
    NNS_G2D_NULL_ASSERT(pAnimSeqAttr);
    return pAnimSeqAttr->pAttr[0];
}

NNS_G2D_INLINE u32 NNS_G2dGetUserExAnimFrmAttrValue
(
    const NNSG2dUserExAnimFrameAttr * pFrmAttr
)
{
    NNS_G2D_NULL_ASSERT(pFrmAttr);
    return pFrmAttr->pAttr[0];
}

#ifdef __cplusplus
}
#endif

#endif
