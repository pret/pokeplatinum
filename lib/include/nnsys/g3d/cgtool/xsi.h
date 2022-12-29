#ifndef NNSG3D_CGTOOL_XSI_H_
#define NNSG3D_CGTOOL_XSI_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/anm.h>
#include <nnsys/g3d/binres/res_struct.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NNS_G3D_XSI_DISABLE
void NNSi_G3dSendTexSRTXsi(const NNSG3dMatAnmResult * anm);
#endif

#ifdef __cplusplus
}
#endif

#endif
