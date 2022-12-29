#ifndef NNSG3D_CGTOOL_SI3D_H_
#define NNSG3D_CGTOOL_SI3D_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/anm.h>
#include <nnsys/g3d/binres/res_struct.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NNS_G3D_SI3D_DISABLE
void NNSi_G3dSendJointSRTSi3d(const NNSG3dJntAnmResult * result);
void NNSi_G3dGetJointScaleSi3d(NNSG3dJntAnmResult * pResult,
                               const fx32 * p,
                               const u8 * cmd,
                               u32 srtflag);
void NNSi_G3dSendTexSRTSi3d(const NNSG3dMatAnmResult * anm);
#endif

#ifdef __cplusplus
}
#endif

#endif
