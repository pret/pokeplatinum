#ifndef NNSG3D_ANM_NSBMA_H_
#define NNSG3D_ANM_NSBMA_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/kernel.h>
#include <nnsys/g3d/anm.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NNS_G3D_NSBMA_DISABLE
void NNSi_G3dAnmObjInitNsBma(NNSG3dAnmObj * pAnmObj,
                             void * pResAnm,
                             const NNSG3dResMdl * pResMdl);

void NNSi_G3dAnmCalcNsBma(NNSG3dMatAnmResult * pResult,
                          const NNSG3dAnmObj * pAnmObj,
                          u32 dataIdx);
#endif

#ifdef __cplusplus
}
#endif

#endif
