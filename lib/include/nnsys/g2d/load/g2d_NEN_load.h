#ifndef NNS_G2D_NEN_LOAD_H_
#define NNS_G2D_NEN_LOAD_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Data.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL NNS_G2dGetUnpackedEntityBank(void * pNenrFile, NNSG2dEntityDataBank ** ppEntityBank);
void NNS_G2dUnpackNEN(NNSG2dEntityDataBank * pDataBank);
const NNSG2dEntityData * NNS_G2dGetEntityDataByIdx(const NNSG2dEntityDataBank * pDataBank, u16 idx);

#ifdef __SNC__
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintEntityData (const NNSG2dEntityData * p1) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintEntityDataBank (const NNSG2dEntityDataBank * p1) NNS_G2D_DEBUG_FUNC_DECL_END
#else
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintEntityData (const NNSG2dEntityData *) NNS_G2D_DEBUG_FUNC_DECL_END
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintEntityDataBank (const NNSG2dEntityDataBank *) NNS_G2D_DEBUG_FUNC_DECL_END
#endif

#ifdef __cplusplus
}
#endif

#endif
