#ifndef NNSG3D_MODEL_H_
#define NNSG3D_MODEL_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>

#ifdef __cplusplus
extern "C" {
#endif

NNS_G3D_INLINE void NNS_G3dMdlUseGlbDiff(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbAmb(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbSpec(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbEmi(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbLightEnableFlag(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbPolygonMode(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbCullMode(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbPolygonID(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbAlpha(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbFogEnableFlag(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbDepthTestCond(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlb1Dot(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbFarClip(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseGlbXLDepthUpdate(NNSG3dResMdl * pMdl);

NNS_G3D_INLINE void NNS_G3dMdlUseMdlDiff(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlAmb(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlSpec(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlEmi(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlLightEnableFlag(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlPolygonMode(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlCullMode(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlPolygonID(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlAlpha(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlFogEnableFlag(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlDepthTestCond(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdl1Dot(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlFarClip(NNSG3dResMdl * pMdl);
NNS_G3D_INLINE void NNS_G3dMdlUseMdlXLDepthUpdate(NNSG3dResMdl * pMdl);

void NNS_G3dMdlSetMdlDiff(NNSG3dResMdl * pMdl, u32 matID, GXRgb col);
void NNS_G3dMdlSetMdlAmb(NNSG3dResMdl * pMdl, u32 matID, GXRgb col);
void NNS_G3dMdlSetMdlSpec(NNSG3dResMdl * pMdl, u32 matID, GXRgb col);
void NNS_G3dMdlSetMdlEmi(NNSG3dResMdl * pMdl, u32 matID, GXRgb col);
void NNS_G3dMdlSetMdlLightEnableFlag(NNSG3dResMdl * pMdl, u32 matID, int light);
void NNS_G3dMdlSetMdlPolygonMode(NNSG3dResMdl * pMdl, u32 matID, GXPolygonMode polyMode);
void NNS_G3dMdlSetMdlCullMode(NNSG3dResMdl * pMdl, u32 matID, GXCull cullMode);
void NNS_G3dMdlSetMdlPolygonID(NNSG3dResMdl * pMdl, u32 matID, int polygonID);
void NNS_G3dMdlSetMdlAlpha(NNSG3dResMdl * pMdl, u32 matID, int alpha);
void NNS_G3dMdlSetMdlFogEnableFlag(NNSG3dResMdl * pMdl, u32 matID, BOOL flag);
void NNS_G3dMdlSetMdlDepthTestCond(NNSG3dResMdl * pMdl, u32 matID, BOOL flag);
void NNS_G3dMdlSetMdl1Dot(NNSG3dResMdl * pMdl, u32 matID, BOOL flag);
void NNS_G3dMdlSetMdlFarClip(NNSG3dResMdl * pMdl, u32 matID, BOOL flag);
void NNS_G3dMdlSetMdlXLDepthUpdate(NNSG3dResMdl * pMdl, u32 matID, BOOL flag);

GXRgb NNS_G3dMdlGetMdlDiff(const NNSG3dResMdl * pMdl, u32 matID);
GXRgb NNS_G3dMdlGetMdlAmb(const NNSG3dResMdl * pMdl, u32 matID);
GXRgb NNS_G3dMdlGetMdlSpec(const NNSG3dResMdl * pMdl, u32 matID);
GXRgb NNS_G3dMdlGetMdlEmi(const NNSG3dResMdl * pMdl, u32 matID);
int NNS_G3dMdlGetMdlLightEnableFlag(const NNSG3dResMdl * pMdl, u32 matID);
GXPolygonMode NNS_G3dMdlGetMdlPolygonMode(const NNSG3dResMdl * pMdl, u32 matID);
GXCull NNS_G3dMdlGetMdlCullMode(const NNSG3dResMdl * pMdl, u32 matID);
int NNS_G3dMdlGetMdlPolygonID(const NNSG3dResMdl * pMdl, u32 matID);
int NNS_G3dMdlGetMdlAlpha(const NNSG3dResMdl * pMdl, u32 matID);
BOOL NNS_G3dMdlGetMdlFogEnableFlag(const NNSG3dResMdl * pMdl, u32 matID);
BOOL NNS_G3dMdlGetMdlDepthTestCond(const NNSG3dResMdl * pMdl, u32 matID);
BOOL NNS_G3dMdlGetMdl1Dot(const NNSG3dResMdl * pMdl, u32 matID);
BOOL NNS_G3dMdlGetMdlFarClip(const NNSG3dResMdl * pMdl, u32 matID);
BOOL NNS_G3dMdlGetMdlXLDepthUpdate(const NNSG3dResMdl * pMdl, u32 matID);

void NNS_G3dMdlSetMdlDiffAll(NNSG3dResMdl * pMdl, GXRgb col);
void NNS_G3dMdlSetMdlAmbAll(NNSG3dResMdl * pMdl, GXRgb col);
void NNS_G3dMdlSetMdlSpecAll(NNSG3dResMdl * pMdl, GXRgb col);
void NNS_G3dMdlSetMdlEmiAll(NNSG3dResMdl * pMdl, GXRgb col);
void NNS_G3dMdlSetMdlLightEnableFlagAll(NNSG3dResMdl * pMdl, int light);
void NNS_G3dMdlSetMdlPolygonModeAll(NNSG3dResMdl * pMdl, GXPolygonMode polyMode);
void NNS_G3dMdlSetMdlCullModeAll(NNSG3dResMdl * pMdl, GXCull cullMode);
void NNS_G3dMdlSetMdlPolygonIDAll(NNSG3dResMdl * pMdl, int polygonID);
void NNS_G3dMdlSetMdlAlphaAll(NNSG3dResMdl * pMdl, int alpha);
void NNS_G3dMdlSetMdlFogEnableFlagAll(NNSG3dResMdl * pMdl, BOOL flag);
void NNS_G3dMdlSetMdlDepthTestCondAll(NNSG3dResMdl * pMdl, BOOL flag);
void NNS_G3dMdlSetMdl1DotAll(NNSG3dResMdl * pMdl, BOOL flag);
void NNS_G3dMdlSetMdlFarClipAll(NNSG3dResMdl * pMdl, BOOL flag);
void NNS_G3dMdlSetMdlXLDepthUpdateAll(NNSG3dResMdl * pMdl, BOOL flag);

#ifdef __cplusplus
}
#endif

#include <nnsys/g3d/model_inline.h>

#endif
