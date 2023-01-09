#include <nnsys/g3d/anm/nsbta.h>
#include <nnsys/g3d/binres/res_struct_accessor.h>

#ifndef NNS_G3D_NSBTA_DISABLE

static fx32 GetTexSRTAnmVectorVal_ (const NNSG3dResTexSRTAnm * pTexAnm, u32 info, u32 data, u32 frame) {
    u32 idx, idx_sub;
    u32 last_interp;
    const void * pDataHead;

    if (info & NNS_G3D_TEXSRTANM_ELEM_CONST) {
        return (fx32)data;
    }

    pDataHead = (const void *)((u8 *)pTexAnm + data);

    if (!(info & NNS_G3D_TEXSRTANM_ELEM_STEP_MASK)) {
        idx = frame;
        goto TEXSRT_VAL_NONINTERP;
    }

    last_interp = (NNS_G3D_TEXSRTANM_ELEM_LAST_INTERP_MASK & info) >>
                  NNS_G3D_TEXSRTANM_ELEM_LAST_INTERP_SHIFT;

    if (info & NNS_G3D_TEXSRTANM_ELEM_STEP_2) {
        if (frame & 1) {
            if (frame > last_interp) {
                idx = (last_interp >> 1) + 1;
                goto TEXSRT_VAL_NONINTERP;
            } else {
                idx = frame >> 1;
                goto TEXSRT_VAL_INTERP_2;
            }
        } else {
            idx = frame >> 1;
            goto TEXSRT_VAL_NONINTERP;
        }
    } else {
        if (frame & 3) {
            if (frame > last_interp) {
                idx = (last_interp >> 2) + (frame & 3);
                goto TEXSRT_VAL_NONINTERP;
            }

            if (frame & 1) {
                fx32 v, v_sub;
                if (frame & 2) {
                    idx_sub = (frame >> 2);
                    idx = idx_sub + 1;
                } else {
                    idx = (frame >> 2);
                    idx_sub = idx + 1;
                }

                if (info & NNS_G3D_TEXSRTANM_ELEM_FX16) {
                    v = *((const fx16 *)pDataHead + idx);
                    v_sub = *((const fx16 *)pDataHead + idx_sub);
                } else {
                    v = *((const fx32 *)pDataHead + idx);
                    v_sub = *((const fx32 *)pDataHead + idx_sub);
                }
                return (v + v + v + v_sub) >> 2;
            } else {
                idx = frame >> 2;
                goto TEXSRT_VAL_INTERP_2;
            }
        } else {
            idx = frame >> 2;
            goto TEXSRT_VAL_NONINTERP;
        }
    }
    NNS_G3D_ASSERT(0);
 TEXSRT_VAL_NONINTERP:
    if (info & NNS_G3D_TEXSRTANM_ELEM_FX16) {
        return *((const fx16 *)pDataHead + idx);
    } else {
        return *((const fx32 *)pDataHead + idx);
    }
 TEXSRT_VAL_INTERP_2:
    {
        fx32 v0, v1;
        if (info & NNS_G3D_TEXSRTANM_ELEM_FX16) {
            v0 = *((const fx16 *)pDataHead + idx);
            v1 = *((const fx16 *)pDataHead + idx + 1);
        } else {
            v0 = *((const fx32 *)pDataHead + idx);
            v1 = *((const fx32 *)pDataHead + idx + 1);
        }
        return ((v0 + v1) >> 1);
    }
}

static u32 GetTexSRTAnmSinCosVal_ (const NNSG3dResTexSRTAnm * pTexAnm, u32 info, u32 data, u32 frame) {
    u32 idx, idx_sub;
    u32 last_interp;
    const void * pDataHead;

    NNS_G3D_ASSERT(!(info & NNS_G3D_TEXSRTANM_ELEM_FX16));

    if (info & NNS_G3D_TEXSRTANM_ELEM_CONST) {
        return data;
    }

    pDataHead = (const void *)((u8 *)pTexAnm + data);

    if (!(info & NNS_G3D_TEXSRTANM_ELEM_STEP_MASK)) {
        idx = frame;
        goto TEXSRT_SINCOS_NONINTERP;
    }

    last_interp = (NNS_G3D_TEXSRTANM_ELEM_LAST_INTERP_MASK & info) >>
                  NNS_G3D_TEXSRTANM_ELEM_LAST_INTERP_SHIFT;

    if (info & NNS_G3D_TEXSRTANM_ELEM_STEP_2) {
        if (frame & 1) {
            if (frame > last_interp) {
                idx = (last_interp >> 1) + 1;
                goto TEXSRT_SINCOS_NONINTERP;
            } else {
                idx = frame >> 1;
                goto TEXSRT_SINCOS_INTERP_2;
            }
        } else {
            idx = frame >> 1;
            goto TEXSRT_SINCOS_NONINTERP;
        }
    } else {
        if (frame & 3) {
            if (frame > last_interp) {
                idx = (last_interp >> 2) + (frame & 3);
                goto TEXSRT_SINCOS_NONINTERP;
            }

            if (frame & 1) {
                fx32 s, s_sub;
                fx32 c, c_sub;

                if (frame & 2) {
                    idx_sub = (frame >> 2);
                    idx = idx_sub + 1;
                } else {
                    idx = (frame >> 2);
                    idx_sub = idx + 1;
                }

                s = *((const fx16 *)pDataHead + 2 * idx);
                c = *((const fx16 *)pDataHead + 2 * idx + 1);
                s_sub = *((const fx16 *)pDataHead + 2 * idx_sub);
                c_sub = *((const fx16 *)pDataHead + 2 * idx_sub + 1);

                s = (s + s + s + s_sub) >> 2;
                c = (c + c + c + c_sub) >> 2;
                return (u32)((s & 0xffff) | (c << 16));
            } else {
                idx = frame >> 2;
                goto TEXSRT_SINCOS_INTERP_2;
            }
        } else {
            idx = frame >> 2;
            goto TEXSRT_SINCOS_NONINTERP;
        }
    }
    NNS_G3D_ASSERT(0);
 TEXSRT_SINCOS_NONINTERP:
    return *((const u32 *)pDataHead + idx);
 TEXSRT_SINCOS_INTERP_2:
    {
        fx32 s0, s1;
        fx32 c0, c1;
        s0 = *((const fx16 *)pDataHead + 2 * idx);
        c0 = *((const fx16 *)pDataHead + 2 * idx + 1);

        s1 = *((const fx16 *)pDataHead + 2 * idx + 2);
        c1 = *((const fx16 *)pDataHead + 2 * idx + 3);

        return (u32)((((s0 + s1) >> 1) & 0xffff) | (((c0 + c1) >> 1) << 16));
    }
}

static void GetTexSRTAnm_ (const NNSG3dResTexSRTAnm * pTexAnm, u16 idx, u32 frame, NNSG3dMatAnmResult * pResult) {
    NNS_G3D_ASSERT(idx < pTexAnm->dict.numEntry);
    NNS_G3D_ASSERT(frame < pTexAnm->numFrame);
    NNS_G3D_ASSERT((pTexAnm->anmHeader.category0 == 'M') && (pTexAnm->anmHeader.category1 == 'TA'));

    {
        const NNSG3dResDictTexSRTAnmData * pAnmData =
            (const NNSG3dResDictTexSRTAnmData *)NNS_G3dGetResDataByIdx(&pTexAnm->dict, idx);
        NNSG3dMatAnmResultFlag flag = pResult->flag;

        {
            fx32 transS, transT;

            transS = GetTexSRTAnmVectorVal_(
                pTexAnm,
                pAnmData->transS,
                pAnmData->transSEx,
                frame
            );
            transT = GetTexSRTAnmVectorVal_(
                pTexAnm,
                pAnmData->transT,
                pAnmData->transTEx,
                frame
            );

            if (transS == 0 && transT == 0) {
                flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO;
            } else {
                flag &= ~NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO;
                pResult->transS = transS;
                pResult->transT = transT;
            }
        }

        {
            u32 data = GetTexSRTAnmSinCosVal_(
                pTexAnm,
                pAnmData->rot,
                pAnmData->rotEx,
                frame
            );

            if (data == ((FX32_ONE << 16) | 0)) {
                flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_ROTZERO;
            } else {
                pResult->sinR = (fx16)(data & 0x0000FFFF);
                pResult->cosR = (fx16)(data >> 16);
                flag &= ~NNS_G3D_MATANM_RESULTFLAG_TEXMTX_ROTZERO;
            }
        }

        {
            fx32 scaleS, scaleT;

            scaleS = GetTexSRTAnmVectorVal_(
                pTexAnm,
                pAnmData->scaleS,
                pAnmData->scaleSEx,
                frame
            );
            scaleT = GetTexSRTAnmVectorVal_(
                pTexAnm,
                pAnmData->scaleT,
                pAnmData->scaleTEx,
                frame
            );

            if (scaleS == FX32_ONE && scaleT == FX32_ONE) {
                flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE;
            } else {
                flag &= ~NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE;
                pResult->scaleS = scaleS;
                pResult->scaleT = scaleT;
            }
        }

        pResult->flag = flag;
    }
}

void NNSi_G3dAnmObjInitNsBta (NNSG3dAnmObj * pAnmObj, void * pResAnm, const NNSG3dResMdl * pResMdl) {
    u32 i;
    NNSG3dResTexSRTAnm * srtAnm;
    const NNSG3dResMat * mat;

    NNS_G3D_NULL_ASSERT(pAnmObj);
    NNS_G3D_NULL_ASSERT(pResAnm);
    NNS_G3D_NULL_ASSERT(pResMdl);

    srtAnm = (NNSG3dResTexSRTAnm *)pResAnm;
    mat = NNS_G3dGetMat(pResMdl);
    pAnmObj->funcAnm = (void *)NNS_G3dFuncAnmMatNsBtaDefault;
    pAnmObj->numMapData = pResMdl->info.numMat;

    MI_CpuClear16(&pAnmObj->mapData[0], sizeof(u16) * pAnmObj->numMapData);

    for (i = 0; i < srtAnm->dict.numEntry; ++i) {
        const NNSG3dResName * name = NNS_G3dGetResNameByIdx(&srtAnm->dict, i);
        int idx = NNS_G3dGetMatIdxByName(mat, name);
        if (!(idx < 0)) {
            pAnmObj->mapData[idx] = (u16)(i | NNS_G3D_ANMOBJ_MAPDATA_EXIST);
        }
    }
}

void NNSi_G3dAnmCalcNsBta (NNSG3dMatAnmResult * pResult, const NNSG3dAnmObj * pAnmObj, u32 dataIdx) {
    NNS_G3D_NULL_ASSERT(pResult);
    NNS_G3D_NULL_ASSERT(pAnmObj);

    {
        const NNSG3dResTexSRTAnm * pTexAnm
            = (const NNSG3dResTexSRTAnm *)pAnmObj->resAnm;

        GetTexSRTAnm_(
            pTexAnm,
            (u16)dataIdx,
            (u32)FX_Whole(pAnmObj->frame),
            pResult
        );

        pResult->prmTexImage &= ~REG_G3_TEXIMAGE_PARAM_TGEN_MASK;
        pResult->prmTexImage |= GX_TEXGEN_TEXCOORD << REG_G3_TEXIMAGE_PARAM_TGEN_SHIFT;

        pResult->flag |= NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET;
    }
}

#endif
