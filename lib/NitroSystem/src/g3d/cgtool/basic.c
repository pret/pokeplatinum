#include <nnsys/g3d/cgtool/basic.h>
#include <nnsys/g3d/gecom.h>
#include <nnsys/g3d/binres/res_struct.h>

void NNSi_G3dSendJointSRTBasic (const NNSG3dJntAnmResult * result) {
    NNS_G3D_NULL_ASSERT(result);

    if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_TRANS_ZERO)) {
        if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_ROT_ZERO)) {
            NNS_G3dGeBufferOP_N(
                G3OP_MTX_MULT_4x3,
                (u32 *)&result->rot._00,
                G3OP_MTX_MULT_4x3_NPARAMS
            );
        } else {
            NNS_G3dGeBufferOP_N(
                G3OP_MTX_TRANS,
                (u32 *)&result->trans.x,
                G3OP_MTX_TRANS_NPARAMS
            );
        }
    } else {
        if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_ROT_ZERO)) {
            NNS_G3dGeBufferOP_N(
                G3OP_MTX_MULT_3x3,
                (u32 *)&result->rot._00,
                G3OP_MTX_MULT_3x3_NPARAMS
            );
        }
    }

    if (!(result->flag & NNS_G3D_JNTANM_RESULTFLAG_SCALE_ONE)) {
        NNS_G3dGeBufferOP_N(
            G3OP_MTX_SCALE,
            (u32 *)&result->scale.x,
            G3OP_MTX_SCALE_NPARAMS
        );
    }
}

void NNSi_G3dGetJointScaleBasic (NNSG3dJntAnmResult * pResult, const fx32 * p, const u8 *, u32 srtflag) {
    NNS_G3D_NULL_ASSERT(pResult);

    if (srtflag & NNS_G3D_SRTFLAG_SCALE_ONE) {
        pResult->flag |= NNS_G3D_JNTANM_RESULTFLAG_SCALE_ONE;
    } else {
        NNS_G3D_NULL_ASSERT(p);

        pResult->scale.x = *(p + 0);
        pResult->scale.y = *(p + 1);
        pResult->scale.z = *(p + 2);
    }

    pResult->flag |= NNS_G3D_JNTANM_RESULTFLAG_SCALEEX0_ONE |
                     NNS_G3D_JNTANM_RESULTFLAG_SCALEEX1_ONE;
}
