#ifndef NNSG3D_UTIL_H_
#define NNSG3D_UTIL_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/kernel.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus

#define NNS_G3D_UTIL_RESNAME_LEN 17
#else
#define NNS_G3D_UTIL_RESNAME_LEN 16
#endif

typedef union {
    char _0[NNS_G3D_UTIL_RESNAME_LEN];
    struct {
        NNSG3dResName resName;
#ifdef __cplusplus
        u32 _1;
#endif
    };
} NNSG3dUtilResName;

#define NNS_G3D_DEFRESNAME(var, str) \
    static const NNSG3dUtilResName var ATTRIBUTE_ALIGN(4) = {str}

#define NNS_G3D_GET_JNTID(pMdl, pJntID, literal)                                          \
    do {                                                                                  \
        static const char name[NNS_G3D_UTIL_RESNAME_LEN] ATTRIBUTE_ALIGN(4) = literal;    \
        *pJntID = NNS_G3dGetNodeIdxByName(NNS_G3dGetNodeInfo(pMdl), (NNSG3dResName *)name); \
    } while (0)

#define NNS_G3D_GET_MATID(pMdl, pMatID, literal)                                          \
    do {                                                                                  \
        static const char name[NNS_G3D_UTIL_RESNAME_LEN] ATTRIBUTE_ALIGN(4) = literal;    \
        *pMatID = NNS_G3dGetMatIdxByName(NNS_G3dGetMat(pMdl), (NNSG3dResName *)name);      \
    } while (0)

#define NNS_G3D_GET_SHPID(pMdl, pShpID, literal)                                          \
    do {                                                                                  \
        static const char name[NNS_G3D_UTIL_RESNAME_LEN] ATTRIBUTE_ALIGN(4) = literal;    \
        *pShpID = NNS_G3dGetShpIdxByName(NNS_G3dGetShp(pMdl), (NNSG3dResName *)name);      \
    } while (0)

#define NNS_G3D_GET_MDL(pMdlSet, pMdl, literal)                                           \
    do {                                                                                  \
        static const char name[NNS_G3D_UTIL_RESNAME_LEN] ATTRIBUTE_ALIGN(4) = literal;    \
        pMdl = NNS_G3dGetMdlByName(pMdlSet, (NNSG3dResName *)name);                        \
    } while (0)

#define NNS_G3D_GET_ANM(pRes, pResAnm, literal)                                           \
    do {                                                                                  \
        static const char name[NNS_G3D_UTIL_RESNAME_LEN] ATTRIBUTE_ALIGN(4) = literal;    \
        pResAnm = NNS_G3dGetAnmByName(pRes, pName);                                       \
    } while (0)

NNS_G3D_INLINE BOOL NNSi_G3dBitVecCheck(const u32 * vec, u32 idx);
NNS_G3D_INLINE void NNSi_G3dBitVecSet(u32 * vec, u32 idx);
NNS_G3D_INLINE void NNSi_G3dBitVecReset(u32 * vec, u32 idx);

void NNS_G3dGetCurrentMtx(MtxFx43 * m, MtxFx33 * n);
BOOL NNS_G3dGetResultMtx(const NNSG3dRenderObj * pRenderObj,
                         MtxFx43 * pos,
                         MtxFx33 * nrm,
                         u32 nodeID);
BOOL NNS_G3dSetResultMtx(const NNSG3dRenderObj * pRenderObj,
                         const MtxFx43 * pos,
                         const MtxFx33 * nrm,
                         u32 nodeID);

void NNS_G3dInit(void);

int NNS_G3dGetSbcCmdLen(const u8 * c);
const u8 * NNS_G3dSearchSbcCmd(const u8 * c, u8 cmd);
const u8 * NNS_G3dGetParentNodeID(int * parentID, const u8 * sbc, u32 nodeID);
int NNS_G3dGetChildNodeIDList(u8 * idList, const u8 * sbc, u32 nodeID);

BOOL NNS_G3dResDefaultSetup(void * pResData);
void NNS_G3dResDefaultRelease(void * pResData);

int NNS_G3dLocalOriginToScrPos(int * px, int * py);
int NNS_G3dWorldPosToScrPos(const VecFx32 * pWorld, int * px, int * py);
int NNS_G3dScrPosToWorldLine(int px, int py, VecFx32 * pNear, VecFx32 * pFar);

#ifdef __cplusplus
}
#endif

#include <nnsys/g3d/util_inline.h>

#endif
