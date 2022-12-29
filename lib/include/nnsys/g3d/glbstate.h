#ifndef NNSG3D_GLBSTATE_H_
#define NNSG3D_GLBSTATE_H_

#include <nnsys/g3d/config.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    NNS_G3D_GLB_FLAG_FLUSH_WVP              = 0x00000001,
    NNS_G3D_GLB_FLAG_FLUSH_VP               = 0x00000002,
    NNS_G3D_GLB_FLAG_INVBASE_UPTODATE       = 0x00000004,
    NNS_G3D_GLB_FLAG_INVCAMERA_UPTODATE     = 0x00000008,
    NNS_G3D_GLB_FLAG_INVPROJ_UPTODATE       = 0x00000010,
    NNS_G3D_GLB_FLAG_INVBASECAMERA_UPTODATE = 0x00000020,
    NNS_G3D_GLB_FLAG_INVCAMERAPROJ_UPTODATE = 0x00000040,

    NNS_G3D_GLB_FLAG_BASECAMERA_UPTODATE    = 0x00000080,

    NNS_G3D_GLB_FLAG_SRTCAMERA_UPTODATE     = NNS_G3D_GLB_FLAG_BASECAMERA_UPTODATE,
    NNS_G3D_GLB_FLAG_FLUSH_ALT              = NNS_G3D_GLB_FLAG_FLUSH_WVP
} NNSG3dGlbFlag;

typedef struct {
    u32 cmd0;
    u32 mtxmode_proj;
    MtxFx44 projMtx;

    u32 mtxmode_posvec;
    MtxFx43 cameraMtx;

    u32 cmd1;
    u32 lightVec[4];

    u32 cmd2;
    u32 prmMatColor0;
    u32 prmMatColor1;
    u32 prmPolygonAttr;
    u32 prmViewPort;

    u32 cmd3;
    u32 lightColor[4];

    u32 cmd4;
    MtxFx33 prmBaseRot;
    VecFx32 prmBaseTrans;
    VecFx32 prmBaseScale;
    u32 prmTexImageParam;

    u32 flag;
    MtxFx43 invCameraMtx;
    MtxFx43 srtCameraMtx;
    MtxFx43 invSrtCameraMtx;

    MtxFx43 invBaseMtx;

    MtxFx44 invProjMtx;
    MtxFx44 invCameraProjMtx;

    VecFx32 camPos;
    VecFx32 camUp;
    VecFx32 camTarget;
} NNSG3dGlb;

NNS_G3D_INLINE void NNS_G3dGlbLookAt(const VecFx32 * camPos,
                                     const VecFx32 * camUp,
                                     const VecFx32 * target);
NNS_G3D_INLINE void NNS_G3dGlbFrustum(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f);
NNS_G3D_INLINE void NNS_G3dGlbFrustumW(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW);
NNS_G3D_INLINE void NNS_G3dGlbPerspective(fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f);
NNS_G3D_INLINE void NNS_G3dGlbPerspectiveW(fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, fx32 scaleW);
NNS_G3D_INLINE void NNS_G3dGlbOrtho(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f);
NNS_G3D_INLINE void NNS_G3dGlbOrthoW(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW);
NNS_G3D_INLINE void NNS_G3dGlbSetProjectionMtx(const MtxFx44 * m);

NNS_G3D_INLINE void NNS_G3dGlbSetBaseRot(const MtxFx33 * pRot);
NNS_G3D_INLINE void NNS_G3dGlbSetViewPort(int x1, int y1, int x2, int y2);

NNS_G3D_INLINE const MtxFx43 * NNS_G3dGlbGetCameraMtx(void);
NNS_G3D_INLINE const MtxFx44 * NNS_G3dGlbGetProjectionMtx(void);
NNS_G3D_INLINE const MtxFx33 * NNS_G3dGlbGetBaseRot(void);
NNS_G3D_INLINE const VecFx32 * NNS_G3dGlbGetBaseTrans(void);
NNS_G3D_INLINE const VecFx32 * NNS_G3dGlbGetBaseScale(void);
NNS_G3D_INLINE const VecFx32 * NNS_G3dGlbGetCameraPos(void);
NNS_G3D_INLINE const VecFx32 * NNS_G3dGlbGetCameraUp(void);
NNS_G3D_INLINE const VecFx32 * NNS_G3dGlbGetCameraTarget(void);

NNS_G3D_INLINE void NNS_G3dGlbFlush(void);
NNS_G3D_INLINE void NNS_G3dGlbFlushAlt(void);
NNS_G3D_INLINE const MtxFx43 * NNS_G3dGlbGetSrtCameraMtx(void);
NNS_G3D_INLINE const MtxFx43 * NNS_G3dGlbGetInvSrtCameraMtx(void);

void NNS_G3dGlbInit(void);
void NNS_G3dGlbFlushP(void);
void NNS_G3dGlbFlushVP(void);
void NNS_G3dGlbFlushWVP(void);
void NNS_G3dGlbSetBaseTrans(const VecFx32 * pTrans);
void NNS_G3dGlbSetBaseScale(const VecFx32 * pScale);
void NNS_G3dGlbLightVector(GXLightId lightID, fx16 x, fx16 y, fx16 z);
void NNS_G3dGlbLightColor(GXLightId lightID, GXRgb rgb);
void NNS_G3dGlbMaterialColorDiffAmb(GXRgb diffuse, GXRgb ambient, BOOL IsSetVtxColor);
void NNS_G3dGlbMaterialColorSpecEmi(GXRgb specular, GXRgb emission, BOOL IsShininess);
void NNS_G3dGlbPolygonAttr(int light,
                           GXPolygonMode polyMode,
                           GXCull cullMode,
                           int polygonID,
                           int alpha,
                           int misc
);
const MtxFx43 * NNS_G3dGlbGetInvV(void);
const MtxFx43 * NNS_G3dGlbGetInvW(void);
const MtxFx44 * NNS_G3dGlbGetInvP(void);
const MtxFx43 * NNS_G3dGlbGetWV(void);
const MtxFx43 * NNS_G3dGlbGetInvWV(void);
const MtxFx44 * NNS_G3dGlbGetInvVP(void);

void NNS_G3dGlbGetViewPort(int * px1, int * py1, int * px2, int * py2);

extern NNSG3dGlb NNS_G3dGlb;

#ifdef __cplusplus
}
#endif

#include <nnsys/g3d/glbstate_inline.h>

#endif
