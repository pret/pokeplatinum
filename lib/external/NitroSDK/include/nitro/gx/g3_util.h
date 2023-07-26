#ifndef NITRO_G3_UTIL_H_
#define NITRO_G3_UTIL_H_

#include <nitro/gx/gxcommon.h>
#include <nitro/gx/g3.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_mtx43.h>
#include <nitro/fx/fx_mtx44.h>

#ifdef __cplusplus
extern "C" {
#endif

void G3i_FrustumW_(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, BOOL draw,
                   MtxFx44 * mtx);
void G3i_PerspectiveW_(fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, fx32 scaleW,
                       BOOL draw, MtxFx44 * mtx);
void G3i_OrthoW_(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, BOOL draw,
                 MtxFx44 * mtx);
void G3i_LookAt_(const VecFx32 * camPos, const VecFx32 * camUp, const VecFx32 * target, BOOL draw,
                 MtxFx43 * mtx);
void G3_RotX(fx32 s, fx32 c);
void G3_RotY(fx32 s, fx32 c);
void G3_RotZ(fx32 s, fx32 c);
void G3_LoadTexMtxTexCoord(const MtxFx44 * mtx);
void G3_LoadTexMtxEnv(const MtxFx44 * mtx);

void G3BS_LoadTexMtxTexCoord(GXDLInfo * info, const MtxFx44 * mtx);
void G3CS_LoadTexMtxTexCoord(GXDLInfo * info, const MtxFx44 * mtx);
void G3B_LoadTexMtxTexCoord(GXDLInfo * info, const MtxFx44 * mtx);
void G3C_LoadTexMtxTexCoord(GXDLInfo * info, const MtxFx44 * mtx);
void G3BS_LoadTexMtxEnv(GXDLInfo * info, const MtxFx44 * mtx);
void G3B_LoadTexMtxEnv(GXDLInfo * info, const MtxFx44 * mtx);
void G3CS_LoadTexMtxEnv(GXDLInfo * info, const MtxFx44 * mtx);
void G3C_LoadTexMtxEnv(GXDLInfo * info, const MtxFx44 * mtx);

static inline void G3_Frustum (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, MtxFx44 * mtx)
{
    G3i_FrustumW_(t, b, l, r, n, f, FX32_ONE, TRUE, mtx);
}

static inline
void G3_Perspective (fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, MtxFx44 * mtx)
{
    G3i_PerspectiveW_(fovySin, fovyCos, aspect, n, f, FX32_ONE, TRUE, mtx);
}

static inline void G3_Ortho (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, MtxFx44 * mtx)
{
    G3i_OrthoW_(t, b, l, r, n, f, FX32_ONE, TRUE, mtx);
}

static inline void G3_FrustumW (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx)
{
    G3i_FrustumW_(t, b, l, r, n, f, scaleW, TRUE, mtx);
}

static inline void G3_PerspectiveW (fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx)
{
    G3i_PerspectiveW_(fovySin, fovyCos, aspect, n, f, scaleW, TRUE, mtx);
}

static inline void G3_OrthoW (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx)
{
    G3i_OrthoW_(t, b, l, r, n, f, scaleW, TRUE, mtx);
}

static inline void G3_LookAt (const VecFx32 * camPos, const VecFx32 * camUp, const VecFx32 * target, MtxFx43 * mtx)
{
    G3i_LookAt_(camPos, camUp, target, TRUE, mtx);
}

#ifdef __cplusplus
}
#endif

#endif
