#include <nnsys/g3d/cgtool/3dsmax.h>
#include <nnsys/g3d/gecom.h>

#ifndef NNS_G3D_3DSMAX_DISABLE

#include <nitro/code32.h>

static void texmtxCalc_flag_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    fx32 p, q;
    fx32 ss_sin, ss_cos, st_sin, st_cos;
    fx32 tmpW, tmpH;

    tmpW = (s32)anm->origWidth << FX32_SHIFT;
    tmpH = (s32)anm->origHeight << FX32_SHIFT;
    FX_DivAsync(tmpH, tmpW);

    ss_cos = (fx32)((fx64)anm->scaleS * anm->cosR >> FX32_SHIFT);
    ss_sin = (fx32)((fx64)anm->scaleS * anm->sinR >> FX32_SHIFT);
    st_cos = (fx32)((fx64)anm->scaleT * anm->cosR >> FX32_SHIFT);
    st_sin = (fx32)((fx64)anm->scaleT * anm->sinR >> FX32_SHIFT);

    m->_00 = ss_cos;
    m->_11 = st_cos;

    m->_01 = st_sin * FX_GetDivResult() >> FX32_SHIFT;
    FX_DivAsync(tmpW, tmpH);

    p = (-anm->origWidth << (FX32_SHIFT - 1)) - anm->transS * anm->origWidth;
    q = (-anm->origHeight << (FX32_SHIFT - 1)) + anm->transT * anm->origHeight;

    m->_30 = (fx32)(((fx64)ss_cos * p - (fx64)ss_sin * q) >> (FX32_SHIFT - 4)) +
             (anm->origWidth << (FX32_SHIFT - 1 + 4));
    m->_31 = (fx32)(((fx64)st_sin * p + (fx64)st_cos * q) >> (FX32_SHIFT - 4)) +
             (anm->origHeight << (FX32_SHIFT - 1 + 4));

    m->_10 = -ss_sin * FX_GetDivResult() >> FX32_SHIFT;
}

static void texmtxCalc_flagS_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    fx32 p, q;
    fx32 tmpW, tmpH;

    tmpW = (s32)anm->origWidth << FX32_SHIFT;
    tmpH = (s32)anm->origHeight << FX32_SHIFT;
    FX_DivAsync(tmpH, tmpW);

    m->_00 = anm->cosR;
    m->_11 = anm->cosR;

    m->_01 = anm->sinR * FX_GetDivResult() >> FX32_SHIFT;
    FX_DivAsync(tmpW, tmpH);

    p = (-anm->origWidth << (FX32_SHIFT - 1)) - anm->transS * anm->origWidth;
    q = (-anm->origHeight << (FX32_SHIFT - 1)) + anm->transT * anm->origHeight;

    m->_30 = (fx32)(((fx64)anm->cosR * p - (fx64)anm->sinR * q) >> (FX32_SHIFT - 4)) +
             (anm->origWidth << (FX32_SHIFT - 1 + 4));
    m->_31 = (fx32)(((fx64)anm->sinR * p + (fx64)anm->cosR * q) >> (FX32_SHIFT - 4)) +
             (anm->origHeight << (FX32_SHIFT - 1 + 4));

    m->_10 = -anm->sinR * FX_GetDivResult() >> FX32_SHIFT;
}

static void texmtxCalc_flagR_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    fx32 p, q;

    m->_00 = anm->scaleS;
    m->_11 = anm->scaleT;

    m->_01 = 0;

    p = (-anm->origWidth << (FX32_SHIFT - 1)) - anm->transS * anm->origWidth;
    q = (-anm->origHeight << (FX32_SHIFT - 1)) + anm->transT * anm->origHeight;

    m->_30 = (fx32)(((fx64)anm->scaleS * p) >> (FX32_SHIFT - 4)) +
             (anm->origWidth << (FX32_SHIFT - 1 + 4));
    m->_31 = (fx32)(((fx64)anm->scaleT * q) >> (FX32_SHIFT - 4)) +
             (anm->origHeight << (FX32_SHIFT - 1 + 4));

    m->_10 = 0;
}

static void texmtxCalc_flagRS_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    m->_00 = FX32_ONE;
    m->_11 = FX32_ONE;

    m->_01 = 0;

    m->_30 = (-anm->transS * anm->origWidth) << 4;
    m->_31 = (anm->transT * anm->origHeight) << 4;

    m->_10 = 0;
}

static void texmtxCalc_flagT_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    fx32 p, q;
    fx32 ss_sin, ss_cos, st_sin, st_cos;
    fx32 tmpW, tmpH;

    tmpW = (s32)anm->origWidth << FX32_SHIFT;
    tmpH = (s32)anm->origHeight << FX32_SHIFT;
    FX_DivAsync(tmpH, tmpW);

    ss_cos = (fx32)((fx64)anm->scaleS * anm->cosR >> FX32_SHIFT);
    ss_sin = (fx32)((fx64)anm->scaleS * anm->sinR >> FX32_SHIFT);
    st_cos = (fx32)((fx64)anm->scaleT * anm->cosR >> FX32_SHIFT);
    st_sin = (fx32)((fx64)anm->scaleT * anm->sinR >> FX32_SHIFT);

    m->_00 = ss_cos;
    m->_11 = st_cos;

    m->_01 = st_sin * FX_GetDivResult() >> FX32_SHIFT;
    FX_DivAsync(tmpW, tmpH);

    p = (-anm->origWidth << (FX32_SHIFT - 1));
    q = (-anm->origHeight << (FX32_SHIFT - 1));

    m->_30 = (fx32)(((fx64)ss_cos * p - (fx64)ss_sin * q) >> (FX32_SHIFT - 4)) +
             (anm->origWidth << (FX32_SHIFT - 1 + 4));
    m->_31 = (fx32)(((fx64)st_sin * p + (fx64)st_cos * q) >> (FX32_SHIFT - 4)) +
             (anm->origHeight << (FX32_SHIFT - 1 + 4));

    m->_10 = -ss_sin * FX_GetDivResult() >> FX32_SHIFT;
}

static void texmtxCalc_flagTS_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    fx32 p, q;
    fx32 tmpW, tmpH;

    tmpW = (s32)anm->origWidth << FX32_SHIFT;
    tmpH = (s32)anm->origHeight << FX32_SHIFT;
    FX_DivAsync(tmpH, tmpW);

    m->_00 = anm->cosR;
    m->_11 = anm->cosR;

    m->_01 = anm->sinR * FX_GetDivResult() >> FX32_SHIFT;
    FX_DivAsync(tmpW, tmpH);

    p = (-anm->origWidth << (FX32_SHIFT - 1));
    q = (-anm->origHeight << (FX32_SHIFT - 1));

    m->_30 = (fx32)(((fx64)anm->cosR * p - (fx64)anm->sinR * q) >> (FX32_SHIFT - 4)) +
             (anm->origWidth << (FX32_SHIFT - 1 + 4));
    m->_31 = (fx32)(((fx64)anm->sinR * p + (fx64)anm->cosR * q) >> (FX32_SHIFT - 4)) +
             (anm->origHeight << (FX32_SHIFT - 1 + 4));

    m->_10 = -anm->sinR * FX_GetDivResult() >> FX32_SHIFT;
}

static void texmtxCalc_flagTR_ (MtxFx44 * m, const NNSG3dMatAnmResult * anm) {
    m->_00 = anm->scaleS;
    m->_11 = anm->scaleT;

    m->_01 = 0;

    m->_30 = ((-anm->scaleS + FX32_ONE) * anm->origWidth) << 3;
    m->_31 = ((-anm->scaleT + FX32_ONE) * anm->origHeight) << 3;

    m->_10 = 0;
}

static void texmtxCalc_flagTRS_ (MtxFx44 * m, const NNSG3dMatAnmResult *) {
    m->_00 = FX32_ONE;
    m->_01 = 0;
    m->_10 = 0;
    m->_11 = FX32_ONE;
    m->_30 = 0;
    m->_31 = 0;
}

static void
(*calcTexMtx_[8])(MtxFx44 *, const NNSG3dMatAnmResult *) = {
    &texmtxCalc_flag_,
    &texmtxCalc_flagS_,
    &texmtxCalc_flagR_,
    &texmtxCalc_flagRS_,
    &texmtxCalc_flagT_,
    &texmtxCalc_flagTS_,
    &texmtxCalc_flagTR_,
    &texmtxCalc_flagTRS_
};

void NNSi_G3dSendTexSRT3dsMax (const NNSG3dMatAnmResult * anm) {
    struct {
        u32 cmd;
        u32 mode_tex;
        MtxFx44 m;
        u32 mode_pos_vec;
    } data;

    NNS_G3D_NULL_ASSERT(anm);
    NNS_G3D_ASSERT(
        anm->flag & (NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET |
                     NNS_G3D_MATANM_RESULTFLAG_TEXMTX_MULT)
    );

    if (anm->flag & NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SET) {
        data.cmd = GX_PACK_OP(G3OP_MTX_MODE, G3OP_MTX_LOAD_4x4, G3OP_MTX_MODE, G3OP_NOP);
    } else {
        data.cmd = GX_PACK_OP(G3OP_MTX_MODE, G3OP_MTX_MULT_4x4, G3OP_MTX_MODE, G3OP_NOP);
    }
    data.mode_tex = GX_MTXMODE_TEXTURE;
    data.mode_pos_vec = GX_MTXMODE_POSITION_VECTOR;

    data.m._02 = data.m._03 = data.m._12 = data.m._13 =
        data.m._20 = data.m._21 = data.m._22 = data.m._23 = data.m._32 = 0;
    data.m._33 = FX32_ONE;

    (*calcTexMtx_[anm->flag & (NNS_G3D_MATANM_RESULTFLAG_TEXMTX_SCALEONE |
                               NNS_G3D_MATANM_RESULTFLAG_TEXMTX_ROTZERO |
                               NNS_G3D_MATANM_RESULTFLAG_TEXMTX_TRANSZERO)])(&data.m, anm);

    if (anm->magW != FX32_ONE) {
        data.m._00 = (fx32)((fx64)anm->magW * data.m._00 >> FX32_SHIFT);
        data.m._01 = (fx32)((fx64)anm->magW * data.m._01 >> FX32_SHIFT);
        data.m._30 = (fx32)((fx64)anm->magW * data.m._30 >> FX32_SHIFT);
    }

    if (anm->magH != FX32_ONE) {
        data.m._10 = (fx32)((fx64)anm->magH * data.m._10 >> FX32_SHIFT);
        data.m._11 = (fx32)((fx64)anm->magH * data.m._11 >> FX32_SHIFT);
        data.m._31 = (fx32)((fx64)anm->magH * data.m._31 >> FX32_SHIFT);
    }

    NNS_G3dGeBufferData_N((u32 *)&data.cmd, sizeof(data) / 4);
}

#endif
