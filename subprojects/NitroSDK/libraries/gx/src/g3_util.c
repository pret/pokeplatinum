#include <nitro/gx/g3_util.h>
#include <nitro/gx/g3imm.h>
#include <nitro/gx/g3b.h>
#include <nitro/gx/g3c.h>
#include <nitro/gx/gx_vramcnt.h>
#include <nitro/fx/fx_cp.h>
#include <nitro/fx/fx_vec.h>
#include <nitro/hw/ARM9/mmap_global.h>
#include <nitro/mi/dma.h>
#include <nitro/mi/memory.h>

void G3i_FrustumW_ (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, BOOL draw, MtxFx44 * mtx) {
    MtxFx44 tmp[1];
    if (mtx == NULL) {
        mtx = tmp;
    }
    MTX_FrustumW(t, b, l, r, n, f, scaleW, mtx);
    if (draw) {
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_LoadMtx44(mtx);
    }
}

void G3i_PerspectiveW_ (fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, fx32 scaleW, BOOL draw, MtxFx44 * mtx) {
    MtxFx44 tmp[1];
    if (mtx == NULL) {
        mtx = tmp;
    }
    MTX_PerspectiveW(fovySin, fovyCos, aspect, n, f, scaleW, mtx);
    if (draw) {
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_LoadMtx44(mtx);
    }
}

void G3i_OrthoW_ (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, BOOL draw, MtxFx44 * mtx) {
    MtxFx44 tmp[1];
    if (mtx == NULL) {
        mtx = tmp;
    }
    MTX_OrthoW(t, b, l, r, n, f, scaleW, mtx);
    if (draw) {
        G3_MtxMode(GX_MTXMODE_PROJECTION);
        G3_LoadMtx44(mtx);
    }
}

void G3i_LookAt_ (const VecFx32 * camPos, const VecFx32 * camUp, const VecFx32 * target, BOOL draw, MtxFx43 * mtx) {
    MtxFx43 tmp[1];
    if (mtx == NULL) {
        mtx = tmp;
    }
    MTX_LookAt(camPos, camUp, target, mtx);
    if (draw) {
        G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
        G3_LoadMtx43(mtx);
    }
}

void G3_RotX (fx32 s, fx32 c) {
    vs32 * p = (vs32 *)&reg_G3_MTX_MULT_3x3;

    SDK_MINMAX_ASSERT(s, -FX32_ONE, FX32_ONE);
    SDK_MINMAX_ASSERT(c, -FX32_ONE, FX32_ONE);

    *p = FX32_ONE;
    *p = 0;
    *p = 0;
    *p = 0;
    *p = c;
    *p = s;
    *p = 0;
    *p = -s;
    *p = c;
}

void G3_RotY (fx32 s, fx32 c) {
    vs32 * p = (vs32 *)&reg_G3_MTX_MULT_3x3;

    SDK_MINMAX_ASSERT(s, -FX32_ONE, FX32_ONE);
    SDK_MINMAX_ASSERT(c, -FX32_ONE, FX32_ONE);

    *p = c;
    *p = 0;
    *p = -s;
    *p = 0;
    *p = FX32_ONE;
    *p = 0;
    *p = s;
    *p = 0;
    *p = c;
}

void G3_RotZ (fx32 s, fx32 c) {
    vs32 * p = (vs32 *)&reg_G3_MTX_MULT_3x3;

    SDK_MINMAX_ASSERT(s, -FX32_ONE, FX32_ONE);
    SDK_MINMAX_ASSERT(c, -FX32_ONE, FX32_ONE);

    *p = c;
    *p = s;
    *p = 0;
    *p = -s;
    *p = c;
    *p = 0;
    *p = 0;
    *p = 0;
    *p = FX32_ONE;
}

void G3_LoadTexMtxTexCoord (const MtxFx44 * mtx) {
    vs32 * p = (vs32 *)&reg_G3_MTX_LOAD_4x4;
    SDK_NULL_ASSERT(mtx);
    G3_MtxMode(GX_MTXMODE_TEXTURE);

    *p = mtx->_00;
    *p = mtx->_01;
    *p = mtx->_02;
    *p = mtx->_03;
    *p = mtx->_10;
    *p = mtx->_11;
    *p = mtx->_12;
    *p = mtx->_13;
    *p = mtx->_20 << 4;
    *p = mtx->_21 << 4;
    *p = mtx->_22 << 4;
    *p = mtx->_23 << 4;
    *p = mtx->_30 << 4;
    *p = mtx->_31 << 4;
    *p = mtx->_32 << 4;
    *p = mtx->_33 << 4;
}

static void G3xx_LoadTexMtxTexCoord_ (u32 * param, const MtxFx44 * mtx) {
#if 1
    MI_Copy32B(&mtx->_00, (void *)(param + 2));
#else
    *(param + 2) = (u32)(mtx->_00);
    *(param + 3) = (u32)(mtx->_01);
    *(param + 4) = (u32)(mtx->_02);
    *(param + 5) = (u32)(mtx->_03);
    *(param + 6) = (u32)(mtx->_10);
    *(param + 7) = (u32)(mtx->_11);
    *(param + 8) = (u32)(mtx->_12);
    *(param + 9) = (u32)(mtx->_13);
#endif
    *(param + 10) = (u32)(mtx->_20 << 4);
    *(param + 11) = (u32)(mtx->_21 << 4);
    *(param + 12) = (u32)(mtx->_22 << 4);
    *(param + 13) = (u32)(mtx->_23 << 4);
    *(param + 14) = (u32)(mtx->_30 << 4);
    *(param + 15) = (u32)(mtx->_31 << 4);
    *(param + 16) = (u32)(mtx->_32 << 4);
    *(param + 17) = (u32)(mtx->_33 << 4);
}

void G3BS_LoadTexMtxTexCoord (GXDLInfo * info, const MtxFx44 * mtx) {
    SDK_NULL_ASSERT(mtx);
    SDK_NULL_ASSERT(info);

    *(u32 *)info->curr_cmd = (u32)G3OP_MTX_MODE;
    *info->curr_param = (u32)(GX_MTXMODE_TEXTURE << REG_G3_MTX_MODE_M_SHIFT);
    *(info->curr_param + 1) = (u32)G3OP_MTX_LOAD_4x4;

    G3xx_LoadTexMtxTexCoord_(info->curr_param, mtx);
}

#include <nitro/code32.h>
void G3CS_LoadTexMtxTexCoord (GXDLInfo * info, const MtxFx44 * mtx) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(mtx);

    switch ((u32)info->curr_cmd & 3) {
    case 0:

        break;
    case 1:
        *info->curr_cmd++ = 0;
    case 2:
        *info->curr_cmd++ = 0;
    case 3:
        *info->curr_cmd++ = 0;
        ++info->curr_param;
    }
    ;

    *(u32 *)info->curr_cmd = (G3OP_MTX_LOAD_4x4 << 8) | G3OP_MTX_MODE;
    *info->curr_param = (u32)(GX_MTXMODE_TEXTURE << REG_G3_MTX_MODE_M_SHIFT);
    *(info->curr_param + 1) = (u32)G3OP_MTX_LOAD_4x4;

    G3xx_LoadTexMtxTexCoord_(info->curr_param, mtx);
}

#include <nitro/codereset.h>

void G3_LoadTexMtxEnv (const MtxFx44 * mtx) {
    vs32 * p = (vs32 *)&reg_G3_MTX_LOAD_4x4;
    SDK_NULL_ASSERT(mtx);
    G3_MtxMode(GX_MTXMODE_TEXTURE);

    *p = mtx->_00 << 4;
    *p = mtx->_01 << 4;
    *p = mtx->_02 << 4;
    *p = mtx->_03 << 4;
    *p = mtx->_10 << 4;
    *p = mtx->_11 << 4;
    *p = mtx->_12 << 4;
    *p = mtx->_13 << 4;
    *p = mtx->_20 << 4;
    *p = mtx->_21 << 4;
    *p = mtx->_22 << 4;
    *p = mtx->_23 << 4;
    *p = mtx->_30;
    *p = mtx->_31;
    *p = mtx->_32;
    *p = mtx->_33;
}

void G3BS_LoadTexMtxEnv (GXDLInfo * info, const MtxFx44 * mtx) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(mtx);

    *(u32 *)info->curr_cmd = (u32)G3OP_MTX_MODE;
    *info->curr_param = (u32)(GX_MTXMODE_TEXTURE << REG_G3_MTX_MODE_M_SHIFT);
    *(info->curr_param + 1) = (u32)G3OP_MTX_LOAD_4x4;

    *(info->curr_param + 2) = (u32)(mtx->_00 << 4);
    *(info->curr_param + 3) = (u32)(mtx->_01 << 4);
    *(info->curr_param + 4) = (u32)(mtx->_02 << 4);
    *(info->curr_param + 5) = (u32)(mtx->_03 << 4);
    *(info->curr_param + 6) = (u32)(mtx->_10 << 4);
    *(info->curr_param + 7) = (u32)(mtx->_11 << 4);
    *(info->curr_param + 8) = (u32)(mtx->_12 << 4);
    *(info->curr_param + 9) = (u32)(mtx->_13 << 4);
    *(info->curr_param + 10) = (u32)(mtx->_20 << 4);
    *(info->curr_param + 11) = (u32)(mtx->_21 << 4);
    *(info->curr_param + 12) = (u32)(mtx->_22 << 4);
    *(info->curr_param + 13) = (u32)(mtx->_23 << 4);
    *(info->curr_param + 14) = (u32)mtx->_30;
    *(info->curr_param + 15) = (u32)mtx->_31;
    *(info->curr_param + 16) = (u32)mtx->_32;
    *(info->curr_param + 17) = (u32)mtx->_33;
}

#include <nitro/code32.h>
void G3CS_LoadTexMtxEnv (GXDLInfo * info, const MtxFx44 * mtx) {
    SDK_NULL_ASSERT(info);
    SDK_NULL_ASSERT(mtx);

    switch ((u32)info->curr_cmd & 3) {
    case 0:

        break;
    case 1:
        *info->curr_cmd++ = 0;
    case 2:
        *info->curr_cmd++ = 0;
    case 3:
        *info->curr_cmd++ = 0;
        ++info->curr_param;
    }
    ;

    *(u32 *)info->curr_cmd = (G3OP_MTX_LOAD_4x4 << 8) | G3OP_MTX_MODE;
    *info->curr_param = (u32)(GX_MTXMODE_TEXTURE << REG_G3_MTX_MODE_M_SHIFT);
    *(info->curr_param + 1) = (u32)G3OP_MTX_LOAD_4x4;

    *(info->curr_param + 2) = (u32)(mtx->_00 << 4);
    *(info->curr_param + 3) = (u32)(mtx->_01 << 4);
    *(info->curr_param + 4) = (u32)(mtx->_02 << 4);
    *(info->curr_param + 5) = (u32)(mtx->_03 << 4);
    *(info->curr_param + 6) = (u32)(mtx->_10 << 4);
    *(info->curr_param + 7) = (u32)(mtx->_11 << 4);
    *(info->curr_param + 8) = (u32)(mtx->_12 << 4);
    *(info->curr_param + 9) = (u32)(mtx->_13 << 4);
    *(info->curr_param + 10) = (u32)(mtx->_20 << 4);
    *(info->curr_param + 11) = (u32)(mtx->_21 << 4);
    *(info->curr_param + 12) = (u32)(mtx->_22 << 4);
    *(info->curr_param + 13) = (u32)(mtx->_23 << 4);
    *(info->curr_param + 14) = (u32)(mtx->_30);
    *(info->curr_param + 15) = (u32)(mtx->_31);
    *(info->curr_param + 16) = (u32)(mtx->_32);
    *(info->curr_param + 17) = (u32)(mtx->_33);
}

#include <nitro/codereset.h>

void G3B_LoadTexMtxTexCoord (GXDLInfo * info, const MtxFx44 * mtx) {
    G3BS_LoadTexMtxTexCoord(info, mtx);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MODE_NPARAMS + G3OP_MTX_LOAD_4x4_NPARAMS + 1);
}

void G3C_LoadTexMtxTexCoord (GXDLInfo * info, const MtxFx44 * mtx) {
    G3CS_LoadTexMtxTexCoord(info, mtx);
    info->curr_param += G3OP_MTX_MODE_NPARAMS + G3OP_MTX_LOAD_4x4_NPARAMS + 1;
    info->curr_cmd += 2;
}

void G3B_LoadTexMtxEnv (GXDLInfo * info, const MtxFx44 * mtx) {
    G3BS_LoadTexMtxEnv(info, mtx);
    G3B_UpdateGXDLInfo(info, G3OP_MTX_MODE_NPARAMS + G3OP_MTX_LOAD_4x4_NPARAMS + 1);
}

void G3C_LoadTexMtxEnv (GXDLInfo * info, const MtxFx44 * mtx) {
    G3CS_LoadTexMtxEnv(info, mtx);
    info->curr_param += G3OP_MTX_MODE_NPARAMS + G3OP_MTX_LOAD_4x4_NPARAMS + 1;
    info->curr_cmd += 2;
}
