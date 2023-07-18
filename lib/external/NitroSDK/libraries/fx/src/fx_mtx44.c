#include <nitro/code32.h>
#include <nitro/fx/fx_mtx44.h>
#include <nitro/fx/fx_vec.h>
#include <nitro/fx/fx_cp.h>
#include <nitro/mi/memory.h>

inline fx32 mul64 (fx64 x, fx32 y) {
    return (fx32)((x * y) >> FX32_SHIFT);
}

asm void MTX_Identity44_ (register MtxFx44 * pDst) {
    mov r2, #4096
    mov r3, #0
    stmia r0 !, {r2, r3}
    mov r1, #0
    stmia r0 !, {r1, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r3}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r3}
    stmia r0 !, {r1, r2}
    bx lr
}

asm void MTX_Copy44To33_ (register const MtxFx44 * pSrc, register MtxFx33 * pDst) {
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    bx lr
}

asm void MTX_Copy44To43_ (register const MtxFx44 * pSrc, register MtxFx43 * pDst) {
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    ldmia r0 !, {r2 - r3, r12}
    add r0, r0, #4
    stmia r1 !, {r2 - r3, r12}
    bx lr
}

void MTX_TransApply44 (const MtxFx44 * pSrc, MtxFx44 * pDst, fx32 x, fx32 y, fx32 z) {
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);

    if (pSrc != pDst) {
        MI_Copy48B(pSrc, pDst);
    }
    {
        fx64 xx = x;
        fx64 yy = y;
        fx64 zz = z;

        pDst->_30 =
            pSrc->_30 + (fx32)((xx * pSrc->_00 + yy * pSrc->_10 + zz * pSrc->_20) >> FX32_SHIFT);
        pDst->_31 =
            pSrc->_31 + (fx32)((xx * pSrc->_01 + yy * pSrc->_11 + zz * pSrc->_21) >> FX32_SHIFT);
        pDst->_32 =
            pSrc->_32 + (fx32)((xx * pSrc->_02 + yy * pSrc->_12 + zz * pSrc->_22) >> FX32_SHIFT);
        pDst->_33 =
            pSrc->_33 + (fx32)((xx * pSrc->_03 + yy * pSrc->_13 + zz * pSrc->_23) >> FX32_SHIFT);
    }
}

asm void MTX_Transpose44_ (register const MtxFx44 * pSrc, register MtxFx44 * pDst) {
    stmfd sp !, {r4 - r11}
    ldr r12, [r0, #48]
    ldmia r0 !, {r2 - r11}
    stmia r1 !, {r2, r6, r10, r12}
    ldr r12, [r0, #12]
    stmia r1 !, {r3, r7, r11, r12}
    ldmia r0, {r10 - r11}
    ldr r12, [r0, #16]
    stmia r1 !, {r4, r8, r10, r12}
    ldr r12, [r0, #20]
    stmia r1 !, {r5, r9, r11, r12}
    ldmfd sp !, {r4 - r11}
    bx lr
}

#include <nitro/code16.h>

asm void MTX_Scale44_ (register MtxFx44 * pDst, register fx32 x, register fx32 y, register fx32 z) {
    stmia r0 !, {r1}
    mov r1, #0
    str r2, [r0, #16]
    mov r2, #0
    stmia r0 !, {r1, r2}
    stmia r0 !, {r1, r2}
    add r0, r0, #4
    stmia r0 !, {r1, r2}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2}
    mov r3, #1
    lsl r3, r3, #12
    stmia r0 !, {r1, r2}
    str r3, [r0, #0]
    bx lr
}

#include <nitro/code32.h>

void MTX_ScaleApply44 (const MtxFx44 * pSrc, MtxFx44 * pDst, fx32 x, fx32 y, fx32 z) {
    fx64 v;

    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);

    v = (fx64)x;
    pDst->_00 = mul64(v, pSrc->_00);
    pDst->_01 = mul64(v, pSrc->_01);
    pDst->_02 = mul64(v, pSrc->_02);
    pDst->_03 = mul64(v, pSrc->_03);

    v = (fx64)y;
    pDst->_10 = mul64(v, pSrc->_10);
    pDst->_11 = mul64(v, pSrc->_11);
    pDst->_12 = mul64(v, pSrc->_12);
    pDst->_13 = mul64(v, pSrc->_13);

    v = (fx64)z;
    pDst->_20 = mul64(v, pSrc->_20);
    pDst->_21 = mul64(v, pSrc->_21);
    pDst->_22 = mul64(v, pSrc->_22);
    pDst->_23 = mul64(v, pSrc->_23);

    if (pSrc != pDst) {
        register fx32 t1, t2;
        t1 = pSrc->_30;
        t2 = pSrc->_31;
        pDst->_30 = t1;
        pDst->_31 = t2;

        t1 = pSrc->_32;
        t2 = pSrc->_33;
        pDst->_32 = t1;
        pDst->_33 = t2;
    }
}

#include <nitro/code16.h>

asm void MTX_RotX44_ (register MtxFx44 * pDst, register fx32 sinVal, register fx32 cosVal) {
    str r2, [r0, #20]
    str r2, [r0, #40]
    str r1, [r0, #24]
    neg r1, r1
    str r1, [r0, #36]
    mov r1, #1
    mov r2, #0
    lsl r1, r1, #12
    mov r3, #0
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r2, r3}
    add r0, #8
    stmia r0 !, {r2, r3}
    add r0, #8
    stmia r0 !, {r2, r3}
    stmia r0 !, {r2, r3}
    str r1, [r0, #0]
    bx lr
}

#include <nitro/code32.h>
#include <nitro/code16.h>

asm void MTX_RotY44_ (register MtxFx44 * pDst, register fx32 sinVal, register fx32 cosVal) {
    str r2, [r0, #0]
    str r2, [r0, #40]
    str r1, [r0, #32]
    neg r1, r1
    str r1, [r0, #8]
    mov r3, #1
    mov r1, #0
    lsl r3, r3, #12
    mov r2, #0
    str r2, [r0, #4]
    add r0, #12
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2}
    str r2, [r0, #4]
    add r0, #12
    stmia r0 !, {r1, r2}
    stmia r0 !, {r1, r2, r3}
    bx lr
}

#include <nitro/code32.h>
#include <nitro/code16.h>

asm void MTX_RotZ44_ (register MtxFx44 * pDst, register fx32 sinVal, register fx32 cosVal) {
    str r2, [r0, #0]
    str r2, [r0, #20]
    str r1, [r0, #4]
    neg r1, r1
    str r1, [r0, #16]
    mov r3, #1
    mov r1, #0
    lsl r3, r3, #12
    mov r2, #0
    add r0, #8
    stmia r0 !, {r1, r2}
    add r0, #8
    stmia r0 !, {r1, r2}
    stmia r0 !, {r1, r2, r3}
    stmia r0 !, {r1, r2}
    stmia r0 !, {r1, r2, r3}
    bx lr
}

#include <nitro/code32.h>

void MTX_RotAxis44 (MtxFx44 * pDst, const VecFx32 * vec, fx32 sinVal, fx32 cosVal) {
    fx64 t, ss, cc, xx, yy, zz;
    fx32 t01;
    fx32 s2;
    SDK_NULL_ASSERT(pDst);
    SDK_NULL_ASSERT(vec);

    t = (fx64)(FX32_ONE - cosVal);
    ss = (fx64)sinVal;
    cc = (fx64)cosVal;
    xx = (fx64)vec->x;
    yy = (fx64)vec->y;
    zz = (fx64)vec->z;

    t01 = (fx32)((xx * xx * t) >> (FX64_SHIFT + FX64_SHIFT));
    pDst->_00 = t01 + cosVal;

    t01 = (fx32)((yy * yy * t) >> (FX64_SHIFT + FX64_SHIFT));
    pDst->_11 = t01 + cosVal;

    t01 = (fx32)((zz * zz * t) >> (FX64_SHIFT + FX64_SHIFT));
    pDst->_22 = t01 + cosVal;

    t01 = (fx32)((t * xx * yy) >> (FX64_SHIFT + FX64_SHIFT));
    s2 = (fx32)((ss * zz) >> FX64_SHIFT);
    pDst->_01 = t01 + s2;
    pDst->_10 = t01 - s2;

    t01 = (fx32)((t * xx * zz) >> (FX64_SHIFT + FX64_SHIFT));
    s2 = (fx32)((ss * yy) >> FX64_SHIFT);
    pDst->_02 = t01 - s2;
    pDst->_20 = t01 + s2;

    t01 = (fx32)((t * yy * zz) >> (FX64_SHIFT + FX64_SHIFT));
    s2 = (fx32)((ss * xx) >> FX64_SHIFT);
    pDst->_12 = t01 + s2;
    pDst->_21 = t01 - s2;

    pDst->_03 = pDst->_13 = pDst->_23 = pDst->_30 = pDst->_31 = pDst->_32 = 0;
    pDst->_33 = FX32_ONE;
}

void MTX_Concat44 (const MtxFx44 * a, const MtxFx44 * b, MtxFx44 * ab) {
    MtxFx44 tmp;
    MtxFx44 * p;

    register fx32 x, y, z, w;
    register fx32 xx, yy, zz, ww;

    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(ab);

    if (ab == b) {
        p = &tmp;
    } else {
        p = ab;
    }

    x = a->_00;
    y = a->_01;
    z = a->_02;
    w = a->_03;

    p->_00 =
        (fx32)(((fx64)x * b->_00 + (fx64)y * b->_10 + (fx64)z * b->_20 +
                (fx64)w * b->_30) >> FX32_SHIFT);
    p->_01 =
        (fx32)(((fx64)x * b->_01 + (fx64)y * b->_11 + (fx64)z * b->_21 +
                (fx64)w * b->_31) >> FX32_SHIFT);
    p->_03 =
        (fx32)(((fx64)x * b->_03 + (fx64)y * b->_13 + (fx64)z * b->_23 +
                (fx64)w * b->_33) >> FX32_SHIFT);

    xx = b->_02;
    yy = b->_12;
    zz = b->_22;
    ww = b->_32;

    p->_02 = (fx32)(((fx64)x * xx + (fx64)y * yy + (fx64)z * zz + (fx64)w * ww) >> FX32_SHIFT);

    x = a->_10;
    y = a->_11;
    z = a->_12;
    w = a->_13;

    p->_12 = (fx32)(((fx64)x * xx + (fx64)y * yy + (fx64)z * zz + (fx64)w * ww) >> FX32_SHIFT);
    p->_11 =
        (fx32)(((fx64)x * b->_01 + (fx64)y * b->_11 + (fx64)z * b->_21 +
                (fx64)w * b->_31) >> FX32_SHIFT);
    p->_13 =
        (fx32)(((fx64)x * b->_03 + (fx64)y * b->_13 + (fx64)z * b->_23 +
                (fx64)w * b->_33) >> FX32_SHIFT);

    xx = b->_00;
    yy = b->_10;
    zz = b->_20;
    ww = b->_30;

    p->_10 = (fx32)(((fx64)x * xx + (fx64)y * yy + (fx64)z * zz + (fx64)w * ww) >> FX32_SHIFT);

    x = a->_20;
    y = a->_21;
    z = a->_22;
    w = a->_23;

    p->_20 = (fx32)(((fx64)x * xx + (fx64)y * yy + (fx64)z * zz + (fx64)w * ww) >> FX32_SHIFT);
    p->_21 =
        (fx32)(((fx64)x * b->_01 + (fx64)y * b->_11 + (fx64)z * b->_21 +
                (fx64)w * b->_31) >> FX32_SHIFT);
    p->_23 =
        (fx32)(((fx64)x * b->_03 + (fx64)y * b->_13 + (fx64)z * b->_23 +
                (fx64)w * b->_33) >> FX32_SHIFT);

    xx = b->_02;
    yy = b->_12;
    zz = b->_22;
    ww = b->_32;

    p->_22 = (fx32)(((fx64)x * xx + (fx64)y * yy + (fx64)z * zz + (fx64)w * ww) >> FX32_SHIFT);

    x = a->_30;
    y = a->_31;
    z = a->_32;
    w = a->_33;

    p->_32 = (fx32)(((fx64)x * xx + (fx64)y * yy + (fx64)z * zz + (fx64)w * ww) >> FX32_SHIFT);
    p->_31 =
        (fx32)(((fx64)x * b->_01 + (fx64)y * b->_11 + (fx64)z * b->_21 +
                (fx64)w * b->_31) >> FX32_SHIFT);
    p->_30 =
        (fx32)(((fx64)x * b->_00 + (fx64)y * b->_10 + (fx64)z * b->_20 +
                (fx64)w * b->_30) >> FX32_SHIFT);
    p->_33 =
        (fx32)(((fx64)x * b->_03 + (fx64)y * b->_13 + (fx64)z * b->_23 +
                (fx64)w * b->_33) >> FX32_SHIFT);

    if (p == &tmp) {
        *ab = tmp;
    }
}

void MTX_FrustumW (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx) {
    fx64c inv1, inv2;
    fx32 dblN;

    SDK_NULL_ASSERT(mtx);
    SDK_ASSERTMSG(t != b, "MTX_Frustum: 't' and 'b' clipping planes are equal.");
    SDK_ASSERTMSG(l != r, "MTX_Frustum: 'l' and 'r' clipping planes are equal.");
    SDK_ASSERTMSG(n != f, "MTX_Frustum: 'n' and 'f' clipping planes are equal.");

    SDK_MINMAX_ASSERT(f, -0x10000 * FX32_ONE, 0x10000 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(n, -0x10000 * FX32_ONE, 0x10000 * FX32_ONE - 1);

    {
        FX_InvAsync(r - l);
        mtx->_01 = 0;
        mtx->_02 = 0;
        mtx->_03 = 0;
        mtx->_10 = 0;
        mtx->_12 = 0;
        mtx->_13 = 0;
        mtx->_23 = -scaleW;
        mtx->_30 = 0;
        mtx->_31 = 0;
        mtx->_33 = 0;
        dblN = n << 1;
        inv1 = FX_GetInvResultFx64c();
    }
    {
        FX_InvAsyncImm(t - b);
        if (scaleW != FX32_ONE) {
            inv1 = (inv1 * scaleW) / FX32_ONE;
        }
        mtx->_00 = FX_Mul32x64c(dblN, inv1);
        inv2 = FX_GetInvResultFx64c();
    }
    {
        FX_InvAsyncImm(n - f);
        if (scaleW != FX32_ONE) {
            inv2 = (inv2 * scaleW) / FX32_ONE;
        }
        mtx->_11 = FX_Mul32x64c(dblN, inv2);
        mtx->_20 = FX_Mul32x64c(r + l, inv1);
        mtx->_21 = FX_Mul32x64c(t + b, inv2);
        inv1 = FX_GetInvResultFx64c();
    }
    if (scaleW != FX32_ONE) {
        inv1 = (inv1 * scaleW) / FX32_ONE;
    }
    mtx->_22 = FX_Mul32x64c(f + n, inv1);
    mtx->_32 = FX_Mul32x64c(FX_Mul(dblN, f), inv1);
}

void MTX_PerspectiveW (fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx) {
    fx32 one_tan;
    fx64 t;

    SDK_NULL_ASSERT(mtx);
    SDK_ASSERTMSG(fovySin > 0 && fovySin < FX32_ONE, "G3_Perspective: sine of fovy out of range.");
    SDK_ASSERTMSG(
        fovyCos > -FX32_ONE
        && fovyCos < FX32_ONE, "G3_Perspective: cosine of fovy out of range."
    );
    SDK_ASSERTMSG(aspect != 0, "G3_Perspective: aspect is 0.");

    SDK_MINMAX_ASSERT(f, -0x10000 * FX32_ONE, 0x10000 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(n, -0x10000 * FX32_ONE, 0x10000 * FX32_ONE - 1);

    one_tan = FX_Div((fx32)fovyCos, (fx32)fovySin);
    FX_InvAsyncImm(n - f);
    if (scaleW != FX32_ONE) {
        one_tan = (one_tan * scaleW) / FX32_ONE;
    }
    mtx->_01 = 0;
    mtx->_02 = 0;
    mtx->_03 = 0;
    mtx->_10 = 0;
    mtx->_11 = one_tan;
    mtx->_12 = 0;
    mtx->_13 = 0;
    mtx->_20 = 0;
    mtx->_21 = 0;
    mtx->_23 = -scaleW;
    mtx->_30 = 0;
    mtx->_31 = 0;
    mtx->_33 = 0;
    t = FX_GetInvResultFx64c();
    FX_DivAsyncImm(one_tan, aspect);
    if (scaleW != FX32_ONE) {
        t = (t * scaleW) / FX32_ONE;
    }
    mtx->_22 = FX_Mul32x64c(f + n, t);
    mtx->_32 = FX_Mul32x64c(FX_Mul(n << 1, f), t);
    mtx->_00 = FX_GetDivResult();
}

void MTX_OrthoW (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx) {
    fx64c inv1, inv2, inv3;

    SDK_NULL_ASSERT(mtx);
    SDK_ASSERTMSG(t != b, "G3_Ortho: 't' and 'b' clipping planes are equal.");
    SDK_ASSERTMSG(l != r, "G3_Ortho: 'l' and 'r' clipping planes are equal.");
    SDK_ASSERTMSG(n != f, "G3_Ortho: 'n' and 'f' clipping planes are equal.");

    SDK_MINMAX_ASSERT(f, -0x10000 * FX32_ONE, 0x10000 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(n, -0x10000 * FX32_ONE, 0x10000 * FX32_ONE - 1);

    {
        FX_InvAsync(r - l);
        mtx->_01 = 0;
        mtx->_02 = 0;
        mtx->_03 = 0;
        mtx->_10 = 0;
        mtx->_12 = 0;
        mtx->_13 = 0;
        mtx->_20 = 0;
        mtx->_21 = 0;
        mtx->_23 = 0;
        mtx->_33 = scaleW;
        inv1 = FX_GetInvResultFx64c();
    }
    {
        FX_InvAsyncImm(t - b);
        if (scaleW != FX32_ONE) {
            inv1 = (inv1 * scaleW) / FX32_ONE;
        }
        mtx->_00 = FX_Mul32x64c(FX32_ONE * 2, inv1);
        inv2 = FX_GetInvResultFx64c();
    }
    {
        FX_InvAsyncImm(n - f);
        if (scaleW != FX32_ONE) {
            inv2 = (inv2 * scaleW) / FX32_ONE;
        }
        mtx->_11 = FX_Mul32x64c(FX32_ONE * 2, inv2);
        inv3 = FX_GetInvResultFx64c();
    }

    if (scaleW != FX32_ONE) {
        inv3 = (inv3 * scaleW) / FX32_ONE;
    }
    mtx->_22 = FX_Mul32x64c(FX32_ONE * 2, inv3);
    mtx->_30 = FX_Mul32x64c(-r - l, inv1);
    mtx->_31 = FX_Mul32x64c(-t - b, inv2);
    mtx->_32 = FX_Mul32x64c(f + n, inv3);
}

#include <nitro/codereset.h>
