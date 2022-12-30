#include <nitro.h>
#include <string.h>

#include "unk_0202309C.h"

void sub_0202309C (NNSG2dRendererInstance * param0, fx32 param1)
{
    NNS_G2dInitRenderer(param0);
    NNS_G2dSetRendererSpriteZoffset(param0, param1);
}

void sub_020230AC (NNSG2dRenderSurface * param0, NNSG2dViewRect * param1, NNSG2dOamRegisterFunction param2, NNSG2dAffineRegisterFunction param3, NNSG2dRndCellCullingFunction param4, NNSG2dSurfaceType param5, NNSG2dRendererInstance * param6)
{
    NNS_G2dInitRenderSurface(param0);

    param0->viewRect = *param1;
    param0->pFuncOamRegister = param2;
    param0->pFuncOamAffineRegister = param3;
    param0->pFuncVisibilityCulling = param4;
    param0->type = param5;

    if (param6) {
        NNS_G2dAddRendererTargetSurface(param6, param0);
    }
}

void sub_020230E0 (NNSG2dRenderSurface * param0, NNSG2dViewRect * param1)
{
    param0->viewRect = *param1;
}

BOOL sub_020230F0 (const NNSG2dCellData * param0, const MtxFx32 * param1, const NNSG2dViewRect * param2)
{
    const NNSG2dCellBoundingRectS16 * v0 = NNS_G2dGetCellBoundingRect(param0);
    const fx32 v1 = NNS_G2dGetCellBoundingSphereR(param0);
    const fx32 v2 = param1->_20 - param2->posTopLeft.x;
    const fx32 v3 = param1->_21 - param2->posTopLeft.y;
    fx32 v4;
    fx32 v5;
    fx32 v6;
    fx32 v7;
    fx32 v8;

    if (NNS_G2dCellHasBR(param0) == 1) {
        v4 = v0->minY << FX32_SHIFT;
        v5 = v0->maxY << FX32_SHIFT;
        v6 = v0->minX << FX32_SHIFT;
        v7 = v0->maxX << FX32_SHIFT;
    } else {
        v4 = -v1 << FX32_SHIFT;
        v5 = v1 << FX32_SHIFT;
        v6 = -v1 << FX32_SHIFT;
        v7 = v1 << FX32_SHIFT;
    }

    v4 = FX_Mul(v4, param1->_01) + FX_Mul(v4, param1->_11) + v3;
    v5 = FX_Mul(v5, param1->_01) + FX_Mul(v5, param1->_11) + v3;
    v6 = FX_Mul(v6, param1->_00) + FX_Mul(v6, param1->_10) + v2;
    v7 = FX_Mul(v7, param1->_00) + FX_Mul(v7, param1->_10) + v2;

    if (v5 < v4) {
        v8 = v5;
        v5 = v4;
        v4 = v8;
    }

    if (v7 < v6) {
        v8 = v7;
        v7 = v6;
        v6 = v8;
    }

    if ((v5 > 0) && (v4 < param2->sizeView.y)) {
        if ((v7 > 0) && (v6 < param2->sizeView.x)) {
            return 1;
        }
    }

    return 0;
}
