#ifndef NNS_G2D_MULTICELL_DATA_H_
#define NNS_G2D_MULTICELL_DATA_H_

#include <nitro/types.h>
#include <nnsys/g2d/fmt/g2d_Common_data.h>
#include <nnsys/g2d/fmt/g2d_Anim_data.h>
#include <nnsys/g2d/fmt/g2d_Cell_data.h>
#include <nnsys/g2d/g2d_config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_BINFILE_EXT_MULTICELL "NMCR"

#define NNS_G2D_BINFILE_SIG_MULTICELL (u32)'NMCR'
#define NNS_G2D_BLKSIG_MULTICELLBANK (u32)'MCBK'

#define NNS_G2D_NMCR_MAJOR_VER (u8)1
#define NNS_G2D_NMCR_MINOR_VER (u8)0

#define NNS_G2D_MCNODE_PLAYMODE_MASK 0x0F
#define NNS_G2D_MCNODE_PLAYMODE_SHIFT 0
#define NNS_G2D_MCNODE_VISIBILITY_SHIFT 5
#define NNS_G2D_MCNODE_CELLANIMIDX_SHIFT 8
#define NNS_G2D_MCNODE_CELLANIMIDX_MASK 0xFF00

typedef enum NNSG2dMCAnimationPlayMode {
    NNS_G2D_MCANIM_PLAYMODE_RESET = 0,
    NNS_G2D_MCANIM_PLAYMODE_CONTINUE  = 1,
    NNS_G2D_MCANIM_PLAYMODE_PAUSE = 2,
    NNS_G2D_MCANIM_PLAYMODE_MAX
} NNSG2dMCAnimationPlayMode;

typedef struct NNSG2dMultiCellHierarchyData {
    u16 animSequenceIdx;
    s16 posX;
    s16 posY;

    u16 nodeAttr;
} NNSG2dMultiCellHierarchyData;

typedef struct NNSG2dMultiCellData {
    u16 numNodes;

    u16 numCellAnim;
    NNSG2dMultiCellHierarchyData * pHierDataArray;
} NNSG2dMultiCellData;

typedef struct NNSG2dMultiCellDataBank {
    u16 numMultiCellData;
    u16 pad16;
    NNSG2dMultiCellData * pMultiCellDataArray;
    NNSG2dMultiCellHierarchyData * pHierarchyDataArray;
    void * pStringBank;
    void * pExtendedData;
} NNSG2dMultiCellDataBank;

typedef struct NNSG2dMultiCellDataBankBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dMultiCellDataBank multiCellDataBank;
} NNSG2dMultiCellDataBankBlock;

typedef struct NNSG2dUserExMultiCellAttr {
    u32 * pAttr;
} NNSG2dUserExMultiCellAttr;

typedef struct NNSG2dUserExMultiCellAttrBank {
    u16 numMultiCells;
    u16 numAttribute;
    NNSG2dUserExMultiCellAttr * pMCAttrArray;
} NNSG2dUserExMultiCellAttrBank;

NNS_G2D_INLINE void NNSi_G2dSetMultiCellNodeAttribute
(
    NNSG2dMCAnimationPlayMode mode,
    int bVisibility,
    u16 * pDstAttr
)
{
    *pDstAttr = (u16)(((mode & NNS_G2D_MCNODE_PLAYMODE_MASK) << NNS_G2D_MCNODE_PLAYMODE_SHIFT) |
                      ((bVisibility & 0x1) << NNS_G2D_MCNODE_VISIBILITY_SHIFT));
}

NNS_G2D_INLINE BOOL NNSi_G2dIsMultiCellNodeVisible
(
    const NNSG2dMultiCellHierarchyData * pNode
)
{
    return (BOOL)((pNode->nodeAttr >> NNS_G2D_MCNODE_VISIBILITY_SHIFT) & 0x1);
}

NNS_G2D_INLINE NNSG2dMCAnimationPlayMode NNSi_G2dGetMultiCellNodePlayMode
(
    const NNSG2dMultiCellHierarchyData * pNode
)
{
    const NNSG2dMCAnimationPlayMode mode
        = (NNSG2dMCAnimationPlayMode)((pNode->nodeAttr >> NNS_G2D_MCNODE_PLAYMODE_SHIFT) &
                                      NNS_G2D_MCNODE_PLAYMODE_MASK);

    return mode;
}

NNS_G2D_INLINE void NNSi_G2dSetMC2NodeCellAinmIdx
(
    NNSG2dMultiCellHierarchyData * pNodeData,
    u8 idx
)
{
    pNodeData->nodeAttr &= ~NNS_G2D_MCNODE_CELLANIMIDX_MASK;
    pNodeData->nodeAttr |= idx << NNS_G2D_MCNODE_CELLANIMIDX_SHIFT;
}

NNS_G2D_INLINE u16 NNSi_G2dGetMC2NodeCellAinmIdx
(
    const NNSG2dMultiCellHierarchyData * pNodeData
)
{
    return (u16)((NNS_G2D_MCNODE_CELLANIMIDX_MASK & pNodeData->nodeAttr) >> NNS_G2D_MCNODE_CELLANIMIDX_SHIFT);
}

NNS_G2D_INLINE const NNSG2dUserExCellAttrBank * NNS_G2dGetUserExCellAttrBankFromMCBank (const NNSG2dMultiCellDataBank * pMCBank)
{
    const NNSG2dUserExDataBlock * pBlk
        = NNSi_G2dGetUserExDataBlkByID(pMCBank->pExtendedData,
                                       NNS_G2D_USEREXBLK_CELLATTR);

    if (pBlk != NULL) {
        return (const NNSG2dUserExCellAttrBank *)(pBlk + 1);
    } else {
        return NULL;
    }
}

#ifdef __cplusplus
}
#endif

#endif
