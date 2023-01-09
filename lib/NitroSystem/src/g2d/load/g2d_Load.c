#include <nnsys/g2d/g2d_Load.h>

#include "../include/g2di_Debug.h"

NNSG2dBinaryBlockHeader * NNS_G2dFindBinaryBlock (NNSG2dBinaryFileHeader * pBinFileHeader, u32 signature) {
    NNS_G2D_NULL_ASSERT(pBinFileHeader);

    {
        NNSG2dBinaryBlockHeader * pCursor
            = (NNSG2dBinaryBlockHeader *)((u32)pBinFileHeader + (u32)pBinFileHeader->headerSize);

        u16 count = 0;
        while (count < pBinFileHeader->dataBlocks) {
            NNS_G2D_NULL_ASSERT(pCursor);

            NNSI_G2D_DEBUGMSG0("pCursor->kind = %d\n", pCursor->kind);
            NNSI_G2D_DEBUGMSG0("signature = %d\n", signature);

            if (pCursor->kind == signature) {
                return pCursor;
            }
            pCursor = (NNSG2dBinaryBlockHeader *)((u32)pCursor + pCursor->size);
            count++;
        }
    }

    return NULL;
}

void NNSi_G2dUnpackUserExCellAttrBank (NNSG2dUserExCellAttrBank * pCellAttrBank) {
    u16 i;

    pCellAttrBank->pCellAttrArray
        = NNS_G2D_UNPACK_OFFSET_PTR(
              pCellAttrBank->pCellAttrArray,
              pCellAttrBank
        );
    for ( i = 0; i < pCellAttrBank->numCells; i++ ) {
        pCellAttrBank->pCellAttrArray[i].pAttr
            = NNS_G2D_UNPACK_OFFSET_PTR(
                  pCellAttrBank->pCellAttrArray[i].pAttr,
                  pCellAttrBank
            );
    }
}

#ifndef SDK_FINALROM

void NNSi_G2dPrintUserExCellAttrBank (const NNSG2dUserExCellAttrBank * pCellAttrBank) {
    u16 i, j;
    OS_Printf("------ NNSG2dUserExCellAttrBank ------\n");
    OS_Printf("numCells     = %d \n", pCellAttrBank->numCells);
    OS_Printf("numAttribute = %d \n", pCellAttrBank->numAttribute);

    for ( i = 0; i < pCellAttrBank->numCells; i++ ) {
        NNSG2dUserExCellAttr * pCellAttr
            = &pCellAttrBank->pCellAttrArray[i];

        for ( j = 0; j < pCellAttrBank->numAttribute; j++ ) {
            OS_Printf("attr(%03d, %d) = %08x\n", i, j, pCellAttr->pAttr[j]);
        }
    }
    OS_Printf("--------------------------------------\n");
}

#endif
