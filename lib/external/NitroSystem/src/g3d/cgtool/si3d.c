#include <nnsys/g3d/cgtool/si3d.h>

#ifndef NNS_G3D_SI3D_DISABLE
#include <nnsys/g3d/kernel.h>
#include <nnsys/g3d/gecom.h>
#include <nnsys/g3d/sbc.h>
#include <nnsys/g3d/util.h>
#include <nitro/code32.h>

void NNSi_G3dSendJointSRTSi3d (const NNSG3dJntAnmResult * result) {
    BOOL rtFlag = FALSE;

    u32 flagScaleEx = result->flag & (u32)(NNS_G3D_JNTANM_RESULTFLAG_SCALEEX0_ONE |
                                           NNS_G3D_JNTANM_RESULTFLAG_SCALEEX1_ONE);

    NNS_G3D_ASSERT(
        flagScaleEx == 0 ||
        flagScaleEx == (NNS_G3D_JNTANM_RESULTFLAG_SCALEEX0_ONE |
                        NNS_G3D_JNTANM_RESULTFLAG_SCALEEX1_ONE)
    );

    if (!flagScaleEx) {
        NNS_G3dGeBufferOP_N(
            G3OP_MTX_SCALE,
            (u32 *)&result->scaleEx1.x,
            G3OP_MTX_SCALE_NPARAMS
        );
    }

    if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_TRANS_ZERO)) {
        if (!flagScaleEx) {
            VecFx32 tmp;
            tmp.x = (fx32)((fx64)result->trans.x * result->scaleEx0.x >> FX32_SHIFT);
            tmp.y = (fx32)((fx64)result->trans.y * result->scaleEx0.y >> FX32_SHIFT);
            tmp.z = (fx32)((fx64)result->trans.z * result->scaleEx0.z >> FX32_SHIFT);

            NNS_G3dGeBufferOP_N(
                G3OP_MTX_TRANS,
                (u32 *)&tmp.x,
                G3OP_MTX_TRANS_NPARAMS
            );
        } else {
            rtFlag = TRUE;
        }
    }

    if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_ROT_ZERO)) {
        if (rtFlag) {
            NNS_G3dGeBufferOP_N(
                G3OP_MTX_MULT_4x3,
                (u32 *)&result->rot._00,
                G3OP_MTX_MULT_4x3_NPARAMS
            );
        } else {
            NNS_G3dGeBufferOP_N(
                G3OP_MTX_MULT_3x3,
                (u32 *)&result->rot._00,
                G3OP_MTX_MULT_3x3_NPARAMS
            );
        }
    } else {
        if (rtFlag) {
            NNS_G3dGeBufferOP_N(
                G3OP_MTX_TRANS,
                (u32 *)&result->trans.x,
                G3OP_MTX_TRANS_NPARAMS
            );
        }
    }

    if (!flagScaleEx) {
        NNS_G3dGeBufferOP_N(
            G3OP_MTX_SCALE,
            (u32 *)&result->scaleEx0.x,
            G3OP_MTX_SCALE_NPARAMS
        );
    }

    if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_SCALE_ONE)) {
        NNS_G3dGeBufferOP_N(
            G3OP_MTX_SCALE,
            (u32 *)&result->scale.x,
            G3OP_MTX_SCALE_NPARAMS
        );
    }
}

void NNSi_G3dGetJointScaleSi3d (NNSG3dJntAnmResult * pResult, const fx32 * p, const u8 * cmd, u32 srtflag) {
    u32 nodeID;
    u32 parentID;
    NNS_G3D_NULL_ASSERT(pResult);
    NNS_G3D_NULL_ASSERT(cmd);
    NNS_G3D_NULL_ASSERT(p);
    NNS_G3D_NULL_ASSERT(NNS_G3dRS);

    nodeID = *(cmd + 1);
    parentID = *(cmd + 2);

    if (srtflag & NNS_G3D_SRTFLAG_SCALE_ONE) {
        pResult->flag |= NNS_G3D_JNTANM_RESULTFLAG_SCALE_ONE;

        if (NNSi_G3dBitVecCheck(&NNS_G3dRS->isScaleCacheOne[0], parentID)) {
            NNSi_G3dBitVecSet(&NNS_G3dRS->isScaleCacheOne[0], nodeID);

            pResult->flag |= (NNS_G3D_JNTANM_RESULTFLAG_SCALEEX0_ONE |
                              NNS_G3D_JNTANM_RESULTFLAG_SCALEEX1_ONE);
        } else {
            MI_CpuCopy32(
                &NNS_G3dRSOnGlb.scaleCache[parentID],
                &NNS_G3dRSOnGlb.scaleCache[nodeID],
                sizeof(VecFx32) + sizeof(VecFx32)
            );

            MI_CpuCopy32(
                &NNS_G3dRSOnGlb.scaleCache[parentID],
                &pResult->scaleEx0,
                sizeof(VecFx32) + sizeof(VecFx32)
            );
        }
    } else {
        pResult->scale.x = *(p + 0);
        pResult->scale.y = *(p + 1);
        pResult->scale.z = *(p + 2);

        if (NNSi_G3dBitVecCheck(&NNS_G3dRS->isScaleCacheOne[0], parentID)) {
            MI_CpuCopy32(
                p,
                &NNS_G3dRSOnGlb.scaleCache[nodeID],
                sizeof(VecFx32) + sizeof(VecFx32)
            );

            NNSi_G3dBitVecReset(&NNS_G3dRS->isScaleCacheOne[0], nodeID);

            pResult->flag |= (NNS_G3D_JNTANM_RESULTFLAG_SCALEEX0_ONE |
                              NNS_G3D_JNTANM_RESULTFLAG_SCALEEX1_ONE);
        } else {
            NNSi_G3dBitVecReset(&NNS_G3dRS->isScaleCacheOne[0], nodeID);

            NNS_G3dRSOnGlb.scaleCache[nodeID].s.x =
                (fx32)((fx64)(*(p + 0)) * NNS_G3dRSOnGlb.scaleCache[parentID].s.x >> FX32_SHIFT);
            NNS_G3dRSOnGlb.scaleCache[nodeID].s.y =
                (fx32)((fx64)(*(p + 1)) * NNS_G3dRSOnGlb.scaleCache[parentID].s.y >> FX32_SHIFT);
            NNS_G3dRSOnGlb.scaleCache[nodeID].s.z =
                (fx32)((fx64)(*(p + 2)) * NNS_G3dRSOnGlb.scaleCache[parentID].s.z >> FX32_SHIFT);

            NNS_G3dRSOnGlb.scaleCache[nodeID].inv.x =
                (fx32)((fx64)(*(p + 3)) * NNS_G3dRSOnGlb.scaleCache[parentID].inv.x >> FX32_SHIFT);
            NNS_G3dRSOnGlb.scaleCache[nodeID].inv.y =
                (fx32)((fx64)(*(p + 4)) * NNS_G3dRSOnGlb.scaleCache[parentID].inv.y >> FX32_SHIFT);
            NNS_G3dRSOnGlb.scaleCache[nodeID].inv.z =
                (fx32)((fx64)(*(p + 5)) * NNS_G3dRSOnGlb.scaleCache[parentID].inv.z >> FX32_SHIFT);

            MI_CpuCopy32(
                &NNS_G3dRSOnGlb.scaleCache[parentID],
                &pResult->scaleEx0,
                sizeof(VecFx32) + sizeof(VecFx32)
            );
        }
    }
}

void NNSi_G3dSendTexSRTSi3d (const NNSG3dMatAnmResult * anm) {
    struct {
        u32 cmd;
        u32 mode_tex;
        MtxFx43 m;
        u32 mode_pos_vec;
    } data;

    NNS_G3D_NULL_ASSERT(anm);
    NNS_G3D_ASSERT(
        anm->flag & (NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET |
                     NNS_G3D_MATANM_RESULTFLAG_TEXMTX_MULT)
    );

    if (anm->flag & NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET) {
        data.cmd = GX_PACK_OP(G3OP_MTX_MODE, G3OP_MTX_LOAD_4x3, G3OP_MTX_MODE, G3OP_NOP);
    } else {
        data.cmd = GX_PACK_OP(G3OP_MTX_MODE, G3OP_MTX_MULT_4x3, G3OP_MTX_MODE, G3OP_NOP);
    }

    data.mode_tex = GX_MTXMODE_TEXTURE;
    data.mode_pos_vec = GX_MTXMODE_POSITION_VECTOR;

    data.m._01 = data.m._02 = data.m._10 = data.m._12 = data.m._20 =
        data.m._21 = data.m._22 = data.m._32 = 0;

    if (anm->flag & NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO) {
        data.m._30 = 0;
        data.m._31 = 0;

        if (anm->flag & NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE) {
            data.m._00 = FX32_ONE;
            data.m._11 = FX32_ONE;
        } else {
            data.m._00 = anm->scaleS;
            data.m._11 = anm->scaleT;
        }
    } else if (anm->flag & NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE) {
        data.m._30 = -(anm->transS << 4) * anm->origWidth;
        data.m._31 = -(anm->transT << 4) * anm->origHeight;
        data.m._00 = FX32_ONE;
        data.m._11 = FX32_ONE;
    } else {
        data.m._30 = -(fx32)((fx64)anm->scaleS * anm->transS >> (FX32_SHIFT - 4)) * anm->origWidth;
        data.m._31 = -(fx32)((fx64)anm->scaleT * anm->transT >> (FX32_SHIFT - 4)) * anm->origHeight;
        data.m._00 = anm->scaleS;
        data.m._11 = anm->scaleT;
    }

    if (anm->magW != FX32_ONE) {
        data.m._00 = (fx32)((fx64)anm->magW * data.m._00 >> FX32_SHIFT);
        data.m._30 = (fx32)((fx64)anm->magW * data.m._30 >> FX32_SHIFT);
    }

    if (anm->magH != FX32_ONE) {
        data.m._11 = (fx32)((fx64)anm->magH * data.m._11 >> FX32_SHIFT);
        data.m._31 = (fx32)((fx64)anm->magH * data.m._31 >> FX32_SHIFT);
    }

    NNS_G3dGeBufferData_N((u32 *)&data.cmd, sizeof(data) / 4);
}

#endif
