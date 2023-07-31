#include <nnsys/g3d/anm/nsbva.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>

#ifndef NNS_G3D_NSBVA_DISABLE

void NNSi_G3dAnmObjInitNsBva (NNSG3dAnmObj * pAnmObj, void * pResAnm, const NNSG3dResMdl * pResMdl) {
    u32 i;
    NNSG3dResVisAnm * visAnm;
    const NNSG3dResNodeInfo * jnt;

    visAnm = (NNSG3dResVisAnm *)pResAnm;
    jnt = NNS_G3dGetNodeInfo(pResMdl);
    pAnmObj->funcAnm = (void *)NNS_G3dFuncAnmVisNsBvaDefault;
    pAnmObj->numMapData = pResMdl->info.numNode;

    pAnmObj->resAnm = (void *)visAnm;

    for (i = 0; i < pAnmObj->numMapData; ++i) {
        pAnmObj->mapData[i] = (u16)(i | NNS_G3D_ANMOBJ_MAPDATA_EXIST);
    }
}

void NNSi_G3dAnmCalcNsBva (NNSG3dVisAnmResult * pResult, const NNSG3dAnmObj * pAnmObj, u32 dataIdx) {
    NNS_G3D_NULL_ASSERT(pResult);
    NNS_G3D_NULL_ASSERT(pAnmObj);
    NNS_G3D_NULL_ASSERT(pAnmObj->resAnm);

    {
        u32 frame = (u32)FX_Whole(pAnmObj->frame);
        const NNSG3dResVisAnm * pVisAnm = pAnmObj->resAnm;
        u32 pos = frame * pVisAnm->numNode + dataIdx;
        u32 n = pos >> 5;
        u32 mask = 1U << (pos & 0x1f);

        pResult->isVisible = (BOOL)(pVisAnm->visData[n] & mask);
    }
}

#endif
