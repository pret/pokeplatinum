#ifndef NNSG3D_SBC_H_
#define NNSG3D_SBC_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/kernel.h>
#include <nnsys/g3d/anm.h>
#include <nnsys/g3d/cgtool.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    NNS_G3D_RSFLAG_NODE_VISIBLE           = 0x00000001,
    NNS_G3D_RSFLAG_MAT_TRANSPARENT        = 0x00000002,
    NNS_G3D_RSFLAG_CURRENT_NODE_VALID     = 0x00000004,
    NNS_G3D_RSFLAG_CURRENT_MAT_VALID      = 0x00000008,
    NNS_G3D_RSFLAG_CURRENT_NODEDESC_VALID = 0x00000010,
    NNS_G3D_RSFLAG_RETURN                 = 0x00000020,
    NNS_G3D_RSFLAG_SKIP                   = 0x00000040,

    NNS_G3D_RSFLAG_OPT_RECORD             = 0x00000080,
    NNS_G3D_RSFLAG_OPT_NOGECMD            = 0x00000100,
    NNS_G3D_RSFLAG_OPT_SKIP_SBCDRAW       = 0x00000200,
    NNS_G3D_RSFLAG_OPT_SKIP_SBCMTXCALC    = 0x00000400
} NNSG3dRSFlag;

typedef struct NNSG3dRS_ {
    u8 * c;
    NNSG3dRenderObj * pRenderObj;
    u32 flag;

    NNSG3dSbcCallBackFunc cbVecFunc[NNS_G3D_SBC_COMMAND_NUM];
    u8 cbVecTiming[NNS_G3D_SBC_COMMAND_NUM];

    u8 currentNode;

    u8 currentMat;

    u8 currentNodeDesc;

    u8 dummy_;

    NNSG3dMatAnmResult * pMatAnmResult;

    NNSG3dJntAnmResult * pJntAnmResult;

    NNSG3dVisAnmResult * pVisAnmResult;

    u32 isMatCached[NNS_G3D_SIZE_MAT_MAX / 32];

    u32 isScaleCacheOne[NNS_G3D_SIZE_JNT_MAX / 32];

#if (NNS_G3D_USE_EVPCACHE)
    u32 isEvpCached[NNS_G3D_SIZE_JNT_MAX / 32];
#endif

    const NNSG3dResNodeInfo * pResNodeInfo;
    const NNSG3dResMat * pResMat;
    const NNSG3dResShp * pResShp;
    fx32 posScale;
    fx32 invPosScale;
    NNSG3dGetJointScale funcJntScale;
    NNSG3dSendJointSRT funcJntMtx;
    NNSG3dSendTexSRT funcTexMtx;

    NNSG3dMatAnmResult tmpMatAnmResult;
    NNSG3dJntAnmResult tmpJntAnmResult;
    NNSG3dVisAnmResult tmpVisAnmResult;
} NNSG3dRS;

typedef struct NNSG3dRSOnGlb_ {
    struct NNSG3dMatAnmResult_ matCache[NNS_G3D_SIZE_MAT_MAX];

    struct {
        VecFx32 s;
        VecFx32 inv;
    } scaleCache[NNS_G3D_SIZE_JNT_MAX];

#if (NNS_G3D_USE_EVPCACHE)
    struct {
        MtxFx44 M;
        MtxFx33 N;
    } evpCache[NNS_G3D_SIZE_JNT_MAX];
#endif
} NNSG3dRSOnGlb;

typedef void (* NNSG3dFuncSbc)(NNSG3dRS *, u32);

typedef void (* NNSG3dFuncSbc_MatInternal)(NNSG3dRS *, u32, const NNSG3dResMatData *, u32);
typedef void (* NNSG3dFuncSbc_ShpInternal)(NNSG3dRS *, u32, const NNSG3dResShpData *, u32);

#define NNS_G3D_MTXSTACK_SYS (30)
#define NNS_G3D_MTXSTACK_USER (29)

NNS_G3D_INLINE void NNS_G3dRSSetCallBack(NNSG3dRS * rs, NNSG3dSbcCallBackFunc func, u8 cmd, NNSG3dSbcCallBackTiming timing);
NNS_G3D_INLINE void NNS_G3dRSResetCallBack(NNSG3dRS * rs, u8 cmd);
NNS_G3D_INLINE NNSG3dRenderObj * NNS_G3dRSGetRenderObj(NNSG3dRS * rs);
NNS_G3D_INLINE NNSG3dMatAnmResult * NNS_G3dRSGetMatAnmResult(NNSG3dRS * rs);
NNS_G3D_INLINE NNSG3dJntAnmResult * NNS_G3dRSGetJntAnmResult(NNSG3dRS * rs);
NNS_G3D_INLINE NNSG3dVisAnmResult * NNS_G3dRSGetVisAnmResult(NNSG3dRS * rs);
NNS_G3D_INLINE u8 * NNS_G3dRSGetSbcPtr(NNSG3dRS * rs);
NNS_G3D_INLINE void NNS_G3dRSSetFlag(NNSG3dRS * rs, NNSG3dRSFlag flag);
NNS_G3D_INLINE void NNS_G3dRSResetFlag(NNSG3dRS * rs, NNSG3dRSFlag flag);
NNS_G3D_INLINE int NNS_G3dRSGetCurrentMatID(const NNSG3dRS * rs);
NNS_G3D_INLINE int NNS_G3dRSGetCurrentNodeID(const NNSG3dRS * rs);
NNS_G3D_INLINE int NNS_G3dRSGetCurrentNodeDescID(const NNSG3dRS * rs);
NNS_G3D_INLINE fx32 NNS_G3dRSGetPosScale(const NNSG3dRS * rs);
NNS_G3D_INLINE fx32 NNS_G3dRSGetInvPosScale(const NNSG3dRS * rs);

void NNS_G3dDraw(struct NNSG3dRenderObj_ * pRenderObj);

void NNSi_G3dFuncSbc_NOP(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_RET(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_NODE(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_MTX(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_MAT(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_SHP(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_NODEDESC(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_BB(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_BBY(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_NODEMIX(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_CALLDL(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_POSSCALE(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_ENVMAP(NNSG3dRS *, u32);
void NNSi_G3dFuncSbc_PRJMAP(NNSG3dRS *, u32);

void NNSi_G3dFuncSbc_SHP_InternalDefault(NNSG3dRS * rs,
                                         u32 opt,
                                         const NNSG3dResShpData * shp,
                                         u32 idxShp);

void NNSi_G3dFuncSbc_MAT_InternalDefault(NNSG3dRS * rs,
                                         u32 opt,
                                         const NNSG3dResMatData * mat,
                                         u32 idxMat);

NNS_G3D_INLINE BOOL NNSi_G3dCallBackCheck_A(NNSG3dRS * rs, u8 cmd, NNSG3dSbcCallBackTiming * pTiming);
NNS_G3D_INLINE BOOL NNSi_G3dCallBackCheck_B(NNSG3dRS * rs, u8 cmd, NNSG3dSbcCallBackTiming * pTiming);
NNS_G3D_INLINE BOOL NNSi_G3dCallBackCheck_C(NNSG3dRS * rs, u8 cmd, NNSG3dSbcCallBackTiming timing);
NNS_G3D_INLINE NNSG3dSbcCallBackTiming NNSi_CheckPossibilityOfCallBack(NNSG3dRS * rs, u8 cmd);

extern NNSG3dFuncSbc NNS_G3dFuncSbcTable[NNS_G3D_SBC_COMMAND_NUM];
extern NNSG3dFuncSbc_MatInternal NNS_G3dFuncSbcMatTable[NNS_G3D_SIZE_MAT_VTBL_NUM];
extern NNSG3dFuncSbc_ShpInternal NNS_G3dFuncSbcShpTable[NNS_G3D_SIZE_SHP_VTBL_NUM];
extern NNSG3dRS * NNS_G3dRS;
extern NNSG3dRSOnGlb NNS_G3dRSOnGlb;

#ifdef __cplusplus
}
#endif

#include <nnsys/g3d/sbc_inline.h>

#endif
