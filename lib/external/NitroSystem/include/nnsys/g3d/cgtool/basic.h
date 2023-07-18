#ifndef NNSG3D_CGTOOL_BASIC_H_
#define NNSG3D_CGTOOL_BASIC_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/anm.h>

#ifdef __cplusplus
extern "C" {
#endif

void NNSi_G3dSendJointSRTBasic(const NNSG3dJntAnmResult * result);
void NNSi_G3dGetJointScaleBasic(NNSG3dJntAnmResult * pResult,
                                const fx32 * p,
                                const u8 * cmd,
                                u32 srtflag);

#ifdef __cplusplus
}
#endif

#endif
