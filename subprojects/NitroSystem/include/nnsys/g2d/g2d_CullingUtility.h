#ifndef NNS_G2D_CULLINGUTILITY_H_
#define NNS_G2D_CULLINGUTILITY_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/g2d/fmt/g2d_Vec_data.h>

BOOL NNS_G2dIsInViewCircle(const NNSG2dFVec2 * pvUL, const NNSG2dFVec2 * pvSize, const NNSG2dFVec2 * pos, fx32 boundingR);

#ifdef __cplusplus
}
#endif

#endif
