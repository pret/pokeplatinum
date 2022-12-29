#ifndef NNS_G2D_CELL_DATA_H_
#define NNS_G2D_CELL_DATA_H_

#include <nitro/types.h>
#include <nnsys/g2d/fmt/g2d_Character_data.h>
#include <nnsys/g2d/fmt/g2d_Common_data.h>
#include <nnsys/g2d/g2d_config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_BINFILE_SIG_CELL (u32)'NCER'
#define NNS_G2D_BLKSIG_CELLBANK (u32)'CEBK'

#define NNS_G2D_USEREXBLK_CELLATTR (u32)'UCAT'

#define NNS_G2D_BINFILE_EXT_CELL "NCER"

#define NNS_G2D_CELL_FLIP_H_SHIFT (0 + 8)
#define NNS_G2D_CELL_FLIP_V_SHIFT (1 + 8)
#define NNS_G2D_CELL_FLIP_HV_SHIFT (2 + 8)

#define NNS_G2D_CELL_HAS_BR_SHIFT (3 + 8)

#define NNS_G2D_CELL_BS_R_MASK 0x3F
#define NNS_G2D_CELL_BS_R_OFFSET (2)
#define NNS_G2D_CELL_BS_R_SHIFT (0)

#ifndef NNS_G2D_LIMIT_CELL_X_128
    #define NNS_G2D_CELL_MAX_X 255
#else
    #define NNS_G2D_CELL_MAX_X 127
#endif

#define NNS_G2D_CELL_MAX_Y 127

#define NNS_G2D_CELLBK_ATTR_CELLWITHBR 0x1

#define NNS_G2D_NCER_MAJOR_VER 1
#define NNS_G2D_NCER_MINOR_VER 0

#define NNS_G2dGetSizeReqiredVramTransferCellDataBank NNS_G2dGetSizeRequiredVramTransferCellDataBank

typedef struct NNSG2dCellVramTransferData {
    u32 srcDataOffset;
    u32 szByte;
} NNSG2dCellVramTransferData;

typedef struct NNSG2dVramTransferData {
    u32 szByteMax;
    NNSG2dCellVramTransferData * pCellTransferDataArray;
} NNSG2dVramTransferData;

typedef struct NNSG2dCellOAMAttrData {
    u16 attr0;
    u16 attr1;
    u16 attr2;
} NNSG2dCellOAMAttrData;

typedef struct NNSG2dCellBoundingRectS16 {
    s16 maxX;
    s16 maxY;
    s16 minX;
    s16 minY;
} NNSG2dCellBoundingRectS16;

typedef struct NNSG2dCellData {
    u16 numOAMAttrs;
    u16 cellAttr;

    NNSG2dCellOAMAttrData * pOamAttrArray;
} NNSG2dCellData;

typedef struct NNSG2dCellDataWithBR {
    NNSG2dCellData cellData;
    NNSG2dCellBoundingRectS16 boundingRect;
} NNSG2dCellDataWithBR;

typedef struct NNSG2dCellDataBank {
    u16 numCells;
    u16 cellBankAttr;
    NNSG2dCellData * pCellDataArrayHead;
    NNSG2dCharacterDataMapingType mappingMode;

    NNSG2dVramTransferData * pVramTransferData;

    void * pStringBank;
    void * pExtendedData;
} NNSG2dCellDataBank;

typedef struct NNSG2dCellDataBankBlock {
    NNSG2dBinaryBlockHeader blockHeader;
    NNSG2dCellDataBank cellDataBank;
} NNSG2dCellDataBankBlock;

typedef struct NNSG2dUserExCellAttr {
    u32 * pAttr;
} NNSG2dUserExCellAttr;

typedef struct NNSG2dUserExCellAttrBank {
    u16 numCells;
    u16 numAttribute;
    NNSG2dUserExCellAttr * pCellAttrArray;
} NNSG2dUserExCellAttrBank;

NNS_G2D_INLINE void NNSi_G2dSetCellBankHasBR (NNSG2dCellDataBank * pCellBank)
{
    NNS_G2D_NULL_ASSERT(pCellBank);
    pCellBank->cellBankAttr |= NNS_G2D_CELLBK_ATTR_CELLWITHBR;
}

NNS_G2D_INLINE BOOL NNSi_G2dCellBankHasBR (const NNSG2dCellDataBank * pCellBank)
{
    return (BOOL)(pCellBank->cellBankAttr & NNS_G2D_CELLBK_ATTR_CELLWITHBR);
}

NNS_G2D_INLINE u16 NNSi_G2dSetCellAttrFlipFlag (BOOL bH, BOOL bV, BOOL bHV)
{
    return (u16)((bH << NNS_G2D_CELL_FLIP_H_SHIFT) |
                 (bV << NNS_G2D_CELL_FLIP_V_SHIFT) |
                 (bHV << NNS_G2D_CELL_FLIP_HV_SHIFT));
}

NNS_G2D_INLINE u16 NNSi_G2dSetCellAttrHasBR (BOOL bHasBR)
{
    return (u16)(bHasBR << NNS_G2D_CELL_HAS_BR_SHIFT);
}

NNS_G2D_INLINE BOOL NNSi_G2dIsCellFlipH (const NNSG2dCellData * pCell)
{
    return (BOOL)((pCell->cellAttr >> NNS_G2D_CELL_FLIP_H_SHIFT) & 0x1);
}

NNS_G2D_INLINE BOOL NNSi_G2dIsCellFlipV (const NNSG2dCellData * pCell)
{
    return (BOOL)((pCell->cellAttr >> NNS_G2D_CELL_FLIP_V_SHIFT) & 0x1);
}

NNS_G2D_INLINE BOOL NNSi_G2dIsCellFlipHV (const NNSG2dCellData * pCell)
{
    return (BOOL)((pCell->cellAttr >> NNS_G2D_CELL_FLIP_HV_SHIFT) & 0x1);
}

NNS_G2D_INLINE BOOL NNS_G2dCellHasBR (const NNSG2dCellData * pCell)
{
    return (BOOL)((pCell->cellAttr >> NNS_G2D_CELL_HAS_BR_SHIFT) & 0x1);
}

NNS_G2D_INLINE BOOL NNSi_G2dCellHasBR (const NNSG2dCellData * pCell)
{
    return NNS_G2dCellHasBR(pCell);
}

NNS_G2D_INLINE const NNSG2dCellBoundingRectS16 * NNS_G2dGetCellBoundingRect (const NNSG2dCellData * pCell)
{
    const NNSG2dCellDataWithBR * pBR = ( const NNSG2dCellDataWithBR * )pCell;
    return &pBR->boundingRect;
}

NNS_G2D_INLINE void NNSi_G2dSetCellBoundingSphereR (NNSG2dCellData * pCell, u8 R)
{
    if ((R & 0x3) != 0) {
        R += 0x1 << NNS_G2D_CELL_BS_R_OFFSET;
        R &= ~0x3;
    }

    R = (u8)(R >> NNS_G2D_CELL_BS_R_OFFSET);
    pCell->cellAttr |= ((R & NNS_G2D_CELL_BS_R_MASK) << NNS_G2D_CELL_BS_R_SHIFT);
}

NNS_G2D_INLINE u8 NNS_G2dGetCellBoundingSphereR (const NNSG2dCellData * pCell)
{
    u8 R = (u8)((pCell->cellAttr >> NNS_G2D_CELL_BS_R_SHIFT) & NNS_G2D_CELL_BS_R_MASK);
    return (u8)(R << NNS_G2D_CELL_BS_R_OFFSET);
}

NNS_G2D_INLINE u8 NNSi_G2dGetCellBoundingSphereR (const NNSG2dCellData * pCell)
{
    return NNS_G2dGetCellBoundingSphereR(pCell);
}

NNS_G2D_INLINE BOOL NNS_G2dCellDataBankHasVramTransferData (const NNSG2dCellDataBank * pCellBank)
{
    return (BOOL)(pCellBank->pVramTransferData != NULL);
}

NNS_G2D_INLINE u32 NNS_G2dGetSizeRequiredVramTransferCellDataBank (const NNSG2dCellDataBank * pCellBank)
{
    if (NNS_G2dCellDataBankHasVramTransferData(pCellBank)) {
        const NNSG2dVramTransferData * pData = pCellBank->pVramTransferData;

        return pData->szByteMax;
    }

    return 0;
}

NNS_G2D_INLINE const NNSG2dCellVramTransferData * NNSi_G2dGetCellVramTransferData (const NNSG2dCellDataBank * pCellBank, u16 cellIdx)
{
    const NNSG2dVramTransferData * pTransferData = pCellBank->pVramTransferData;

    return &pTransferData->pCellTransferDataArray[cellIdx];
}

NNS_G2D_INLINE const NNSG2dUserExCellAttrBank * NNS_G2dGetUserExCellAttrBankFromCellBank (const NNSG2dCellDataBank * pCellBank)
{
    const NNSG2dUserExDataBlock * pBlk
        = NNSi_G2dGetUserExDataBlkByID(pCellBank->pExtendedData,
                                       NNS_G2D_USEREXBLK_CELLATTR);

    if (pBlk != NULL) {
        return (const NNSG2dUserExCellAttrBank *)(pBlk + 1);
    } else {
        return NULL;
    }
}

NNS_G2D_INLINE const NNSG2dUserExCellAttr * NNS_G2dGetUserExCellAttr
(
    const NNSG2dUserExCellAttrBank * pCellAttrBank,
    u16 idx
)
{
    if (idx < pCellAttrBank->numCells) {
        return &pCellAttrBank->pCellAttrArray[idx];
    } else {
        return NULL;
    }
}

NNS_G2D_INLINE const u32 NNS_G2dGetUserExCellAttrValue
(
    const NNSG2dUserExCellAttr * pCellAttr
)
{
    return pCellAttr->pAttr[0];
}

NNS_G2D_INLINE void NNS_G2dCopyCellAsOamAttr (const NNSG2dCellData * pCell, u16 idx, GXOamAttr * pDst)
{
    {
        const NNSG2dCellOAMAttrData * pSrc = pCell->pOamAttrArray + idx;

        pDst->attr0 = pSrc->attr0;
        pDst->attr1 = pSrc->attr1;
        pDst->attr2 = pSrc->attr2;
    }
}

NNS_G2D_INLINE s16 NNS_G2dRepeatXinCellSpace (s16 srcX)
{
    if (srcX > NNS_G2D_CELL_MAX_X) {
        srcX |= 0xFF00;
    }
    return srcX;
}

NNS_G2D_INLINE s16 NNS_G2dRepeatYinCellSpace (s16 srcY)
{
    if (srcY > NNS_G2D_CELL_MAX_Y) {
        srcY |= 0xFF00;
    }
    return srcY;
}

#ifdef __cplusplus
}
#endif

#endif
