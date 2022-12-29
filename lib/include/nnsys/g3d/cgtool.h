#ifndef NNSG3D_CGTOOL_H_
#define NNSG3D_CGTOOL_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/anm.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (* NNSG3dGetJointScale)(NNSG3dJntAnmResult * pResult,
                                     const fx32 * p,
                                     const u8 * cmd,
                                     u32 srtflag);

typedef void (* NNSG3dSendJointSRT)(const NNSG3dJntAnmResult *);

typedef void (* NNSG3dSendTexSRT)(const NNSG3dMatAnmResult *);

extern NNSG3dGetJointScale NNS_G3dGetJointScale_FuncArray[NNS_G3D_FUNC_SENDJOINTSRT_MAX];
extern NNSG3dSendJointSRT NNS_G3dSendJointSRT_FuncArray[NNS_G3D_FUNC_SENDJOINTSRT_MAX];

extern NNSG3dSendTexSRT NNS_G3dSendTexSRT_FuncArray[NNS_G3D_FUNC_SENDTEXSRT_MAX];

#ifdef __cplusplus
}
#endif

#endif
