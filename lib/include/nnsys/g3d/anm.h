#ifndef NNSG3D_ANM_H_
#define NNSG3D_ANM_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/kernel.h>

#ifdef __cplusplus
extern "C" {
#endif

struct NNSG3dResMdl_;

typedef void (* NNSG3dAnimInitFunc)(NNSG3dAnmObj *,
                                    void *,
                                    const NNSG3dResMdl *);

typedef struct {
    u8 category0;
    u8 dummy_;
    u16 category1;
    NNSG3dAnimInitFunc func;
} NNSG3dAnmObjInitFunc;

typedef enum {
    NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE  = 0x00000001,
    NNS_G3D_MATANM_RESULTFLAG_TEXMTX_ROTZERO   = 0x00000002,
    NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO = 0x00000004,

    NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET       = 0x00000008,
    NNS_G3D_MATANM_RESULTFLAG_TEXMTX_MULT      = 0x00000010,
    NNS_G3D_MATANM_RESULTFLAG_WIREFRAME        = 0x00000020
} NNSG3dMatAnmResultFlag;

typedef struct NNSG3dMatAnmResult_ {
    NNSG3dMatAnmResultFlag flag;
    u32 prmMatColor0;
    u32 prmMatColor1;
    u32 prmPolygonAttr;
    u32 prmTexImage;
    u32 prmTexPltt;

    fx32 scaleS, scaleT;
    fx16 sinR, cosR;
    fx32 transS, transT;

    u16 origWidth, origHeight;
    fx32 magW, magH;
} NNSG3dMatAnmResult;

typedef enum {
    NNS_G3D_JNTANM_RESULTFLAG_SCALE_ONE      = 0x00000001,
    NNS_G3D_JNTANM_RESULTFLAG_ROT_ZERO       = 0x00000002,
    NNS_G3D_JNTANM_RESULTFLAG_TRANS_ZERO     = 0x00000004,
    NNS_G3D_JNTANM_RESULTFLAG_SCALEEX0_ONE   = 0x00000008,
    NNS_G3D_JNTANM_RESULTFLAG_SCALEEX1_ONE   = 0x00000010,
    NNS_G3D_JNTANM_RESULTFLAG_MAYA_SSC       = 0x00000020
} NNSG3dJntAnmResultFlag;

typedef struct NNSG3dJntAnmResult_ {
    NNSG3dJntAnmResultFlag flag;
    VecFx32 scale;
    VecFx32 scaleEx0;
    VecFx32 scaleEx1;
    MtxFx33 rot;
    VecFx32 trans;
} NNSG3dJntAnmResult;

typedef struct NNSG3dVisAnmResult_ {
    BOOL isVisible;
} NNSG3dVisAnmResult;

typedef void (* NNSG3dFuncAnmMat)(NNSG3dMatAnmResult *,
                                  const NNSG3dAnmObj *,
                                  u32);

typedef void (* NNSG3dFuncAnmJnt)(NNSG3dJntAnmResult *,
                                  const NNSG3dAnmObj *,
                                  u32);

typedef void (* NNSG3dFuncAnmVis)(NNSG3dVisAnmResult *,
                                  const NNSG3dAnmObj *,
                                  u32);

BOOL NNSi_G3dAnmBlendMat(NNSG3dMatAnmResult * pResult,
                         const NNSG3dAnmObj * pAnmObj,
                         u32 matID);

BOOL NNSi_G3dAnmBlendJnt(NNSG3dJntAnmResult *,
                         const NNSG3dAnmObj *,
                         u32);

BOOL NNSi_G3dAnmBlendVis(NNSG3dVisAnmResult *,
                         const NNSG3dAnmObj *,
                         u32);

extern NNSG3dFuncAnmBlendMat NNS_G3dFuncBlendMatDefault;
extern NNSG3dFuncAnmBlendJnt NNS_G3dFuncBlendJntDefault;
extern NNSG3dFuncAnmBlendVis NNS_G3dFuncBlendVisDefault;

extern NNSG3dFuncAnmMat NNS_G3dFuncAnmMatNsBmaDefault;
extern NNSG3dFuncAnmMat NNS_G3dFuncAnmMatNsBtpDefault;
extern NNSG3dFuncAnmMat NNS_G3dFuncAnmMatNsBtaDefault;
extern NNSG3dFuncAnmJnt NNS_G3dFuncAnmJntNsBcaDefault;
extern NNSG3dFuncAnmVis NNS_G3dFuncAnmVisNsBvaDefault;

extern u32 NNS_G3dAnmFmtNum;
extern NNSG3dAnmObjInitFunc NNS_G3dAnmObjInitFuncArray[NNS_G3D_ANMFMT_MAX];

#ifdef __cplusplus
}
#endif

#endif
