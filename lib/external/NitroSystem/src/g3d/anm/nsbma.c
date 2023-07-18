#include <nnsys/g3d/anm/nsbma.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>

#ifndef NNS_G3D_NSBMA_DISABLE

static u16 GetMatColAnmValue_ (const NNSG3dResMatCAnm * pAnm, u32 info, u32 frame) {
    const u16 * pDataHead;
    u32 last_interp;
    u32 idx;

    if (info & NNS_G3D_MATCANM_ELEM_CONST) {
        return (u16)(info & NNS_G3D_MATCANM_ELEM_OFFSET_CONSTANT_MASK);
    }

    pDataHead = (const u16 *)((const u8 *)pAnm + (info & NNS_G3D_MATCANM_ELEM_OFFSET_CONSTANT_MASK));

    if (!(info & NNS_G3D_MATCANM_ELEM_STEP_MASK)) {
        return *(pDataHead + frame);
    }

    last_interp = (NNS_G3D_MATCANM_ELEM_LAST_INTERP_MASK & info)
                  >> NNS_G3D_MATCANM_ELEM_LAST_INTERP_SHIFT;

    if (info & NNS_G3D_MATCANM_ELEM_STEP_2) {
        if (frame & 1) {
            if (frame > last_interp) {
                return *(pDataHead + (last_interp >> 1) + 1);
            } else {
                idx = frame >> 1;
                goto MATC_INTERP_50_50;
            }
        } else {
            return *(pDataHead + (frame >> 1));
        }
    } else {
        if (frame & 3) {
            if (frame > last_interp) {
                return *(pDataHead + (last_interp >> 2) + (frame & 3));
            }

            if (frame & 1) {
                u32 idx_sub;
                u32 v, v_sub;
                u32 c, c_sub;
                u32 rval;
                const u32 cmask0 = GX_RGB_R_MASK | GX_RGB_B_MASK;
                const u32 cmask1 = GX_RGB_G_MASK;

                if (frame & 2) {
                    idx_sub = (frame >> 2);
                    idx = idx_sub + 1;
                } else {
                    idx = (frame >> 2);
                    idx_sub = idx + 1;
                }

                v = *(pDataHead + idx);
                v_sub = *(pDataHead + idx_sub);

                c = v & cmask0;
                c_sub = v_sub & cmask0;
                rval = ((c + c + c + c_sub) >> 2) & cmask0;

                c = v & cmask1;
                c_sub = v_sub & cmask1;
                rval |= ((c + c + c + c_sub) >> 2) & cmask1;

                return (u16)rval;
            } else {
                idx = frame >> 2;
                goto MATC_INTERP_50_50;
            }
        } else {
            return *(pDataHead + (frame >> 2));
        }
    }
    NNS_G3D_ASSERT(0);
 MATC_INTERP_50_50:
    {
        u32 rval;
        u32 v0 = *(pDataHead + idx);
        u32 v1 = *(pDataHead + idx + 1);
        const u32 cmask0 = GX_RGB_R_MASK | GX_RGB_B_MASK;
        const u32 cmask1 = GX_RGB_G_MASK;

        rval = (((v0 & cmask0) + (v1 & cmask0)) >> 1) & cmask0;

        rval |= (((v0 & cmask1) + (v1 & cmask1)) >> 1) & cmask1;

        return (u16)rval;
    }
}

static u16 GetMatColAnmuAlphaValue_ (const NNSG3dResMatCAnm * pAnm, u32 info, u32 frame) {
    const u8 * pDataHead;
    u32 last_interp;

    if (info & NNS_G3D_MATCANM_ELEM_CONST) {
        return (u16)(info & NNS_G3D_MATCANM_ELEM_OFFSET_CONSTANT_MASK);
    }

    pDataHead = (const u8 *)pAnm + (info & NNS_G3D_MATCANM_ELEM_OFFSET_CONSTANT_MASK);

    if (!(info & NNS_G3D_MATCANM_ELEM_STEP_MASK)) {
        return *(pDataHead + frame);
    }

    last_interp = (NNS_G3D_MATCANM_ELEM_LAST_INTERP_MASK & info)
                  >> NNS_G3D_MATCANM_ELEM_LAST_INTERP_SHIFT;
    if (info & NNS_G3D_MATCANM_ELEM_STEP_2) {
        if (frame & 1) {
            if (frame > last_interp) {
                return *(pDataHead + (last_interp >> 1) + 1);
            } else {
                return (u16)((*(pDataHead + (frame >> 1)) + *(pDataHead + (frame >> 1) + 1)) >> 1);
            }
        } else {
            return *(pDataHead + (frame >> 1));
        }
    } else {
        if (frame & 3) {
            if (frame > last_interp) {
                return *(pDataHead + (last_interp >> 2) + (frame & 3));
            }

            if (frame & 1) {
                u32 idx, idx_sub;
                u32 v, v_sub;

                if (frame & 2) {
                    idx_sub = (frame >> 2);
                    idx = idx_sub + 1;
                } else {
                    idx = (frame >> 2);
                    idx_sub = idx + 1;
                }

                v = *(pDataHead + idx);
                v_sub = *(pDataHead + idx_sub);

                return (u16)((v + v + v + v_sub) >> 2);
            } else {
                return (u16)((*(pDataHead + (frame >> 2)) + *(pDataHead + (frame >> 2) + 1)) >> 1);
            }
        } else {
            return *(pDataHead + (frame >> 2));
        }
    }
    NNS_G3D_ASSERT(0);
}

static NNS_G3D_INLINE void GetMatColAnm_ (const NNSG3dResMatCAnm * pAnm, u16 idx, u32 frame, NNSG3dMatAnmResult * pResult) {
    NNS_G3D_NULL_ASSERT(pAnm);
    NNS_G3D_ASSERT(idx < pAnm->dict.numEntry);
    NNS_G3D_ASSERT(frame < pAnm->numFrame);
    NNS_G3D_NULL_ASSERT(pResult);
    NNS_G3D_ASSERT((pAnm->anmHeader.category0 == 'M') && (pAnm->anmHeader.category1 == 'MA'));

    {
        u16 diffuse, ambient, emission, specular, polygon_alpha;
        const NNSG3dResDictMatCAnmData * pAnmData =
            (const NNSG3dResDictMatCAnmData *)NNS_G3dGetResDataByIdx(&pAnm->dict, idx);

        diffuse = GetMatColAnmValue_(pAnm, pAnmData->diffuse, frame);
        ambient = GetMatColAnmValue_(pAnm, pAnmData->ambient, frame);

        pResult->prmMatColor0 = GX_PACK_DIFFAMB_PARAM(
            diffuse, ambient,
            (pResult->prmMatColor0 & REG_G3_DIF_AMB_C_MASK)
        );

        emission = GetMatColAnmValue_(pAnm, pAnmData->emission, frame);
        specular = GetMatColAnmValue_(pAnm, pAnmData->specular, frame);
        pResult->prmMatColor1 = GX_PACK_SPECEMI_PARAM(
            specular, emission,
            (pResult->prmMatColor1 & REG_G3_SPE_EMI_S_MASK)
        );

        polygon_alpha = GetMatColAnmuAlphaValue_(pAnm, pAnmData->polygon_alpha, frame);
        pResult->prmPolygonAttr = (pResult->prmPolygonAttr & ~REG_G3_POLYGON_ATTR_ALPHA_MASK) |
                                  (polygon_alpha << REG_G3_POLYGON_ATTR_ALPHA_SHIFT);
    }
}

void NNSi_G3dAnmObjInitNsBma (NNSG3dAnmObj * pAnmObj, void * pResAnm, const NNSG3dResMdl * pResMdl) {
    u32 i;
    NNSG3dResMatCAnm * matCAnm;
    const NNSG3dResMat * mat;

    NNS_G3D_NULL_ASSERT(pAnmObj);
    NNS_G3D_NULL_ASSERT(pResAnm);
    NNS_G3D_NULL_ASSERT(pResMdl);

    matCAnm = (NNSG3dResMatCAnm *)pResAnm;
    mat = NNS_G3dGetMat(pResMdl);
    pAnmObj->funcAnm = (void *)NNS_G3dFuncAnmMatNsBmaDefault;
    pAnmObj->numMapData = pResMdl->info.numMat;

    MI_CpuClear16(&pAnmObj->mapData[0], sizeof(u16) * pAnmObj->numMapData);

    for (i = 0; i < matCAnm->dict.numEntry; ++i) {
        const NNSG3dResName * name = NNS_G3dGetResNameByIdx(&matCAnm->dict, i);
        int idx = NNS_G3dGetMatIdxByName(mat, name);
        if (!(idx < 0)) {
            pAnmObj->mapData[idx] = (u16)(i | NNS_G3D_ANMOBJ_MAPDATA_EXIST);
        }
    }
}

void NNSi_G3dAnmCalcNsBma (NNSG3dMatAnmResult * pResult, const NNSG3dAnmObj * pAnmObj, u32 dataIdx) {
    NNS_G3D_NULL_ASSERT(pResult);
    NNS_G3D_NULL_ASSERT(pAnmObj);
    {
        const NNSG3dResMatCAnm * pMatAnm
            = (const NNSG3dResMatCAnm *)pAnmObj->resAnm;

        GetMatColAnm_(
            pMatAnm,
            (u16)dataIdx,
            (u32)FX_Whole(pAnmObj->frame),
            pResult
        );
    }
}

#endif
