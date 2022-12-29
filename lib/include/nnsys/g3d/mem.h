#ifndef NNSG3D_MEM_H_
#define NNSG3D_MEM_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/kernel.h>
#include <nnsys/g3d/anm.h>

#include <nnsys/fnd/allocator.h>

#ifdef __cplusplus
extern "C" {
#endif

NNSG3dRenderObj * NNS_G3dAllocRenderObj(NNSFndAllocator * pAlloc);
void NNS_G3dFreeRenderObj(NNSFndAllocator * pAlloc,
                          NNSG3dRenderObj * pRenderObj);

NNSG3dAnmObj * NNS_G3dAllocAnmObj(NNSFndAllocator * pAlloc,
                                  const void * pAnm,
                                  const NNSG3dResMdl * pMdl);
void NNS_G3dFreeAnmObj(NNSFndAllocator * pAlloc,
                       NNSG3dAnmObj * pAnmObj);

NNSG3dJntAnmResult * NNS_G3dAllocRecBufferJnt(NNSFndAllocator * pAlloc,
                                              const NNSG3dResMdl * pResMdl);
void NNS_G3dFreeRecBufferJnt(NNSFndAllocator * pAlloc,
                             NNSG3dJntAnmResult * pRecBuf);

NNSG3dMatAnmResult * NNS_G3dAllocRecBufferMat(NNSFndAllocator * pAlloc,
                                              const NNSG3dResMdl * pResMdl);
void NNS_G3dFreeRecBufferMat(NNSFndAllocator * pAlloc,
                             NNSG3dMatAnmResult * pRecBuf);

#ifdef __cplusplus
}
#endif

#endif
