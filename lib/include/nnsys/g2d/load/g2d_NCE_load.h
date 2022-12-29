#ifndef NNS_G2D_NCE_LOAD_H_
#define NNS_G2D_NCE_LOAD_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Data.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL NNS_G2dGetUnpackedCellBank(void * pNcerFile, NNSG2dCellDataBank ** ppCellBank);
void NNS_G2dUnpackNCE(NNSG2dCellDataBank * pCellData);
const NNSG2dCellData * NNS_G2dGetCellDataByIdx(const NNSG2dCellDataBank * pCellData, u16 idx);

#ifdef __SNC__
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintOBJAttr (const NNSG2dCellOAMAttrData * p1) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintCellInfo (const NNSG2dCellData * p1) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintCellBank (const NNSG2dCellDataBank * p1) NNS_G2D_DEBUG_FUNC_DECL_END
#else
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintOBJAttr (const NNSG2dCellOAMAttrData *) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintCellInfo (const NNSG2dCellData *) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintCellBank (const NNSG2dCellDataBank *) NNS_G2D_DEBUG_FUNC_DECL_END
#endif

#ifdef __cplusplus
}
#endif

#endif
