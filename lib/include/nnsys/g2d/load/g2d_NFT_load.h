#ifndef NNS_G2D_NFT_LOAD_H_
#define NNS_G2D_NFT_LOAD_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Data.h>
#include <nnsys/g2d/g2d_Font.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL NNSi_G2dGetUnpackedFont(void * pNftrFile, NNSG2dFontInformation ** ppFont);

void NNSi_G2dUnpackNFT(NNSG2dBinaryFileHeader * pHeader);

#ifdef SDK_FINALROM
NNS_G2D_INLINE void NNS_G2dPrintFont (const NNSG2dFont *)
{
}
#else
void NNS_G2dPrintFont(const NNSG2dFont * pFont);
#endif

#ifdef __cplusplus
}
#endif

#endif
