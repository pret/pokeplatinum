#ifndef NNS_G2D_NCP_LOAD_H_
#define NNS_G2D_NCP_LOAD_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Data.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL NNS_G2dGetUnpackedPaletteData(void * pNclrFile, NNSG2dPaletteData ** ppPltData);
BOOL NNS_G2dGetUnpackedPaletteCompressInfo(void * pNclrFile, NNSG2dPaletteCompressInfo ** ppPltCmpInfo);

void NNS_G2dUnpackNCL(NNSG2dPaletteData * pPlttData);
void NNSi_G2dUnpackNCLCmpInfo(NNSG2dPaletteCompressInfo * pPlttCmpData);

#ifdef __SNC__
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintPaletteData (const NNSG2dPaletteData * p1) NNS_G2D_DEBUG_FUNC_DECL_END
#else
NNS_G2D_DEBUG_FUNC_DECL_BEGIN void NNS_G2dPrintPaletteData (const NNSG2dPaletteData *) NNS_G2D_DEBUG_FUNC_DECL_END
#endif

#ifdef __cplusplus
}
#endif

#endif
