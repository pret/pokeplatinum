#ifndef NNSG3D_CGTOOL_3DMAX_H_
#define NNSG3D_CGTOOL_3DMAX_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/anm.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NNS_G3D_3DSMAX_DISABLE
void NNSi_G3dSendTexSRT3dsMax(const NNSG3dMatAnmResult * anm);
#endif

#ifdef __cplusplus
}
#endif

#endif
