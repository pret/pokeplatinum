#ifndef NNSG3D_1MAT1SHP_H_
#define NNSG3D_1MAT1SHP_H_

#include <nnsys/g3d/config.h>
#include <nnsys/g3d/binres/res_struct.h>

#ifdef __cplusplus
extern "C" {
#endif

void NNS_G3dDraw1Mat1Shp(const NNSG3dResMdl * pResMdl, u32 matID, u32 shpID, BOOL sendMat);

#ifdef __cplusplus
}
#endif

#endif
