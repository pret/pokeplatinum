#include "bignum.h"

#include <nitro/types.h>

#include "crypto_internal.h"

int BN_num_bits_word(u32 l)
{
    static const char bits[16] = {
        0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4
    };

    int v0;
    if (l & 0xFFFF0000) {
        if (l & 0xFF000000) {
            v0 = 24;
        } else {
            v0 = 16;
        }
    } else if (l & 0xFF00) {
        v0 = 8;
    } else {
        v0 = 0;
    }

    u32 v1 = l >> v0;
    if (v1 & 0xf0) {
        return bits[v1 >> 4] + v0 + 4;
    } else {
        return bits[v1] + v0;
    }
}

int BN_num_bits(const BIGNUM *a)
{
    if (a->top == 0) {
        return 0;
    }
    u32 l = a->d[a->top - 1];
    int i = (a->top - 1) * BN_BITS2;
    return i + BN_num_bits_word(l);
}

void BN_clear_free(BIGNUM *a)
{
    if (a == NULL) {
        return;
    }

    BN_clear(a);
    BN_free(a);
}

void BN_free(BIGNUM *a)
{
    if (a == NULL) {
        return;
    }

    if (a->d != NULL && !BN_get_flags(a, BN_FLG_STATIC_DATA)) {
        CRYPTOi_MyFree(a->d);
    }

    a->flags |= BN_FLG_FREE; /* REMOVE? */

    if (a->flags & BN_FLG_MALLOCED) {
        CRYPTOi_MyFree(a);
    }
}

void bn_zexpand(BIGNUM *bn, int bits)
{
    if (bn->top >= bits) {
        return;
    }

    bn_wexpand(bn, bits);

    if (!bn->d) {
        return;
    }

    for (int i = bn->top; i < bits; i++) {
        bn->d[i] = 0;
    }
}

void bn_fix_top(BIGNUM *a)
{
    u32 *ftl;
    if (a->top > 0) {
        for (ftl = &a->d[a->top - 1]; a->top > 0; a->top--) {
            if (*ftl--) {
                break;
            }
        }
    }
}

void BN_init(BIGNUM *a)
{
    MI_CpuFill8(a, 0, sizeof(BIGNUM));
}

BIGNUM *BN_new(void)
{
    BIGNUM *ret = (BIGNUM *)CRYPTOi_MyAlloc(sizeof(BIGNUM));

    if (ret == NULL) {
        return NULL;
    }
    ret->flags = BN_FLG_MALLOCED;
    ret->top = 0;
    ret->neg = FALSE;
    ret->max = 0;
    ret->d = NULL;
    return ret;
}

BN_CTX *BN_CTX_new(void)
{
    BN_CTX *ret = (BN_CTX *)CRYPTOi_MyAlloc(sizeof(BN_CTX));

    if (ret == NULL) {
        return NULL;
    }

    BN_CTX_init(ret);
    ret->flags = BN_FLG_MALLOCED;
    return ret;
}

void BN_CTX_init(BN_CTX *ctx)
{
    MI_CpuFill8(ctx, 0, sizeof(BN_CTX));
    ctx->tos = 0;
    ctx->flags = 0;
}

void BN_CTX_free(BN_CTX *c)
{
    for (int i = 0; i < BN_CTX_NUM; i++) {
        BN_clear_free(&c->bn[i]);
    }
    if (c->flags & BN_FLG_MALLOCED) {
        CRYPTOi_MyFree(c);
    }
}

/* This is an internal function that should not be used in applications.
 * It ensures that 'b' has enough room for a 'bits' bit number.  It is
 * mostly used by the various BIGNUM routines.  If there is an error,
 * NULL is returned. if not, 'b' is returned.
 */
BIGNUM *bn_expand2(BIGNUM *b, int words)
{
    if (words > b->max) {
        if (BN_get_flags(b, BN_FLG_STATIC_DATA)) {
            return NULL;
        }
        u32 *A = (u32 *)CRYPTOi_MyAlloc(sizeof(u32) * (words + 1));
        u32 *a = A;
        if (A == NULL) {
            return NULL;
        }
        const u32 *B = b->d;
        /* Check if the previous number needs to be copied */
        if (B != NULL) {
            MI_CpuCopy8(b->d, A, b->top * sizeof(b->d[0]));
            CRYPTOi_MyFree(b->d);
        }

        b->d = a;
        b->max = words;
    }

    return b;
}

BIGNUM *BN_copy(BIGNUM *a, const BIGNUM *b)
{
    if (a == b) {
        return a;
    }

    if (bn_wexpand(a, b->top) == NULL) {
        return NULL;
    }

    MI_CpuCopy8(b->d, a->d, sizeof(b->d[0]) * b->top);

    a->top = b->top;
    if (a->top == 0 && a->d != NULL) {
        a->d[0] = 0;
    }
    a->neg = b->neg;
    return a;
}

void BN_clear(BIGNUM *a)
{
    if (a->d != NULL) {
        MI_CpuFill8(a->d, 0, a->max * sizeof(a->d[0]));
    }
    a->top = 0;
    a->neg = FALSE;
}

BOOL BN_set_word(BIGNUM *a, u32 w)
{
    if (bn_expand(a, (int)sizeof(u32) * 8) == NULL) {
        return FALSE;
    }

    a->neg = FALSE;
    a->top = 0;
    a->d[0] = w;
    if (a->d[0] != 0) {
        a->top = 1;
    }

    return TRUE;
}

/* ignore negative */
BIGNUM *BN_bin2bn(const u8 *s, int len, BIGNUM *ret)
{
    if (ret == NULL) {
        ret = BN_new();
    }
    if (ret == NULL) {
        return NULL;
    }
    u32 l = 0;
    u32 n = len;
    if (n == 0) {
        ret->top = 0;
        return ret;
    }
    if (bn_expand(ret, (int)(n + 2) * 8) == NULL) {
        return NULL;
    }
    u32 i = (n - 1) / BN_BYTES + 1;
    u32 m = (n - 1) % (BN_BYTES);
    ret->top = i;
    while (n-- > 0) {
        l = (l << 8) | *(s++);
        if (m-- == 0) {
            ret->d[--i] = l;
            l = 0;
            m = BN_BYTES - 1;
        }
    }
    /* need to call this due to clear byte at top if avoiding
     * having the top bit set (-ve number) */
    bn_fix_top(ret);
    return ret;
}

/* ignore negative */
int BN_bn2bin(const BIGNUM *a, u8 *to)
{
    int i = BN_num_bytes(a);
    int n = i;
    while (i-- > 0) {
        u32 l = a->d[i / BN_BYTES];
        *to++ = l >> (8 * (i % BN_BYTES));
    }
    return n;
}

int BN_ucmp(const BIGNUM *a, const BIGNUM *b)
{
    int i = a->top - b->top;
    if (i != 0) {
        return i;
    }
    u32 *ap = a->d;
    u32 *bp = b->d;
    for (i = a->top - 1; i >= 0; i--) {
        u32 t1 = ap[i];
        u32 t2 = bp[i];
        if (t1 != t2) {
            return t1 > t2 ? 1 : -1;
        }
    }
    return 0;
}

BOOL BN_set_bit(BIGNUM *a, int n)
{
    int i = n / BN_BITS2;
    int j = n % BN_BITS2;
    if (a->top <= i) {
        if (bn_wexpand(a, i + 1) == NULL) {
            return FALSE;
        }
        for (int k = a->top; k < i + 1; k++) {
            a->d[k] = 0;
        }
        a->top = i + 1;
    }

    a->d[i] |= (1 << j);
    return TRUE;
}

BOOL BN_is_bit_set(const BIGNUM *a, int n)
{
    if (n < 0) {
        return FALSE;
    }

    int i = n / BN_BITS2;
    int j = n % BN_BITS2;
    if (a->top <= i) {
        return FALSE;
    }

    return !!(a->d[i] & 1 << j);
}

u32 bn_mul_add_words(u32 *rp, u32 *ap, int num, u32 w)
{
    u32 c = 0;

    if (num <= 0) {
        return 0;
    }

    u32 bl = LBITS(w);
    u32 bh = HBITS(w);

    while (TRUE) {
        mul_add(rp[0], ap[0], bl, bh, c);
        if (--num == 0) {
            break;
        }
        mul_add(rp[1], ap[1], bl, bh, c);
        if (--num == 0) {
            break;
        }
        mul_add(rp[2], ap[2], bl, bh, c);
        if (--num == 0) {
            break;
        }
        mul_add(rp[3], ap[3], bl, bh, c);
        if (--num == 0) {
            break;
        }
        ap += 4;
        rp += 4;
    }
    return c;
}

u32 bn_mul_words(u32 *rp, u32 *ap, int num, u32 w)
{
    u32 carry = 0;

    if (num <= 0) {
        return 0;
    }

    u32 bl = LBITS(w);
    u32 bh = HBITS(w);

    while (TRUE) {
        mul(rp[0], ap[0], bl, bh, carry);
        if (--num == 0) {
            break;
        }
        mul(rp[1], ap[1], bl, bh, carry);
        if (--num == 0) {
            break;
        }
        mul(rp[2], ap[2], bl, bh, carry);
        if (--num == 0) {
            break;
        }
        mul(rp[3], ap[3], bl, bh, carry);
        if (--num == 0) {
            break;
        }
        ap += 4;
        rp += 4;
    }
    return carry;
}

void bn_sqr_words(u32 *r, u32 *a, int n)
{
    if (n <= 0) {
        return;
    }
    while (TRUE) {
        sqr64(r[0], r[1], a[0]);
        if (--n == 0) {
            break;
        }

        sqr64(r[2], r[3], a[1]);
        if (--n == 0) {
            break;
        }

        sqr64(r[4], r[5], a[2]);
        if (--n == 0) {
            break;
        }

        sqr64(r[6], r[7], a[3]);
        if (--n == 0) {
            break;
        }

        a += 4;
        r += 8;
    }
}

u32 bn_add_words(u32 *r, u32 *a, u32 *b, int n)
{
    if (n <= 0) {
        return 0;
    }

    u32 c = 0;
    u32 l, t;
    while (TRUE) {
        t = a[0];
        t = (t + c) & BN_MASK2;
        c = t < c;
        l = (t + b[0]) & BN_MASK2;
        c += l < t;
        r[0] = l;
        if (--n <= 0) {
            break;
        }

        t = a[1];
        t = (t + c) & BN_MASK2;
        c = t < c;
        l = (t + b[1]) & BN_MASK2;
        c += l < t;
        r[1] = l;
        if (--n <= 0) {
            break;
        }

        t = a[2];
        t = (t + c) & BN_MASK2;
        c = t < c;
        l = (t + b[2]) & BN_MASK2;
        c += l < t;
        r[2] = l;
        if (--n <= 0) {
            break;
        }

        t = a[3];
        t = (t + c) & BN_MASK2;
        c = t < c;
        l = (t + b[3]) & BN_MASK2;
        c += l < t;
        r[3] = l;
        if (--n <= 0) {
            break;
        }

        a += 4;
        b += 4;
        r += 4;
    }

    return c;
}

u32 bn_sub_words(u32 *r, u32 *a, u32 *b, int n)
{
    if (n <= 0) {
        return 0;
    }

    u32 c = 0;
    while (TRUE) {
        u32 t1 = a[0];
        u32 t2 = b[0];
        r[0] = (t1 - t2 - c) & BN_MASK2;
        if (t1 != t2) {
            c = t1 < t2;
        }
        if (--n <= 0) {
            break;
        }

        t1 = a[1];
        t2 = b[1];
        r[1] = (t1 - t2 - c) & BN_MASK2;
        if (t1 != t2) {
            c = t1 < t2;
        }
        if (--n <= 0) {
            break;
        }

        t1 = a[2];
        t2 = b[2];
        r[2] = (t1 - t2 - c) & BN_MASK2;
        if (t1 != t2) {
            c = t1 < t2;
        }
        if (--n <= 0) {
            break;
        }

        t1 = a[3];
        t2 = b[3];
        r[3] = (t1 - t2 - c) & BN_MASK2;
        if (t1 != t2) {
            c = t1 < t2;
        }
        if (--n <= 0) {
            break;
        }

        a += 4;
        b += 4;
        r += 4;
    }

    return c;
}

BOOL BN_lshift(BIGNUM *r, const BIGNUM *a, int n)
{
    BIGNUM *bn;
    if (bn_wexpand(r, a->top + (n / BN_BITS2) + 1) == NULL) {
        return 0;
    }

    r->neg = a->neg;
    int nw = n / BN_BITS2;
    int lb = n % BN_BITS2;
    int rb = BN_BITS2 - lb;
    u32 *f = a->d;
    u32 *t = r->d;
    t[a->top + nw] = 0;
    if (lb == 0) {
        for (int i = a->top - 1; i >= 0; i--) {
            t[nw + i] = f[i];
        }
    } else {
        for (int i = a->top - 1; i >= 0; i--) {
            u32 l = f[i];
            t[nw + i + 1] |= (l >> rb) & BN_MASK2;
            t[nw + i] = (l << lb) & BN_MASK2;
        }
    }
    MI_CpuFill8(t, 0, nw * sizeof(t[0]));
    r->top = a->top + nw + 1;
    bn_fix_top(r);
    return TRUE;
}

BOOL BN_rshift(BIGNUM *r, BIGNUM *a, int n)
{
    int i, j;

    int nw = n / BN_BITS2;
    int lb;
    int rb = n % BN_BITS2;
    lb = BN_BITS2 - rb;
    if (nw > a->top) {
        BN_zero(r);
        return TRUE;
    }
    if (r != a) {
        if (bn_wexpand(r, a->top - nw + 2) == NULL) {
            return FALSE;
        }

        r->neg = a->neg;
    }
    u32 *f = &a->d[nw];
    u32 *t = r->d;
    j = a->top - nw;
    r->top = j;

    if (rb == 0) {
        for (i = j + 1; i > 0; i--) {
            *t++ = *f++;
        }
    } else {
        u32 l = *f++;
        for (i = 1; i < j; i++) {
            u32 tmp = (l >> rb) & BN_MASK2;
            l = *f++;
            *t++ = (tmp | (l << lb)) & BN_MASK2;
        }
        *t++ = (l >> rb) & BN_MASK2;
        *t = 0;
    }
    bn_fix_top(r);
    return TRUE;
}

BOOL BN_add_word(BIGNUM *a, u32 w)
{
    if (w == 0) {
        return TRUE;
    }

    if (a->neg) {
        if (a->top > 1) {
            a->neg = FALSE;
            int result = BN_sub_word(a, w);
            a->neg = TRUE;
            return result;
        } else {
            u32 d = a->d[0];
            if (d > w) {
                a->d[0] -= w;
            } else if (d < w) {
                a->neg = FALSE;
                a->d[0] = w - d;
            } else {
                a->neg = FALSE;
                a->top = 0;
            }
            return TRUE;
        }
    }

    w &= BN_MASK2;
    if (bn_wexpand(a, a->top + 1) == NULL) {
        return FALSE;
    }

    int i = 0;
    a->d[a->top] = 0;
    while (TRUE) {
        u32 l = (a->d[i] + w) & BN_MASK2;
        a->d[i] = l;
        if (w > l) {
            w = 1;
        } else {
            break;
        }
        i++;
    }

    if (i >= a->top) {
        a->top++;
    }

    return TRUE;
}

BOOL BN_sub_word(BIGNUM *a, u32 w)
{
    if (w == 0) {
        return TRUE;
    }

    if (a->neg) {
        a->neg = FALSE;
        int result = BN_add_word(a, w);
        a->neg = TRUE;
        return result;
    }

    w &= BN_MASK2;
    if (a->top <= 1) {
        if (a->top == 0) {
            if (bn_wexpand(a, 1) == NULL) {
                return FALSE;
            }

            a->d[0] = w;
            a->neg = TRUE;
            a->top = 1;
            return TRUE;
        } else {
            u32 d = a->d[0];
            if (d == w) {
                a->top = 0;
            } else if (d > w) {
                a->d[0] -= w;
            } else {
                a->neg = TRUE;
                a->d[0] = w - d;
            }
            return TRUE;
        }
    }
    int i = 0;
    while (TRUE) {
        if (a->d[i] >= w) {
            a->d[i] -= w;
            break;
        } else {
            a->d[i] = (a->d[i] - w) & BN_MASK2;
            i++;
            w = 1;
        }
    }
    if (a->d[i] == 0 && i == a->top - 1) {
        a->top--;
    }
    return TRUE;
}

BOOL BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
    /*  a +  b	a+b
     *  a + -b	a-b
     * -a +  b	b-a
     * -a + -b	-(a+b)
     */
    if (a->neg ^ b->neg) {
        /* only one is negative */
        if (a->neg) {
            const BIGNUM *tmp = a;
            a = b;
            b = tmp;
        }

        /* we are now a - b */

        if (BN_ucmp(a, b) < 0) {
            if (!BN_usub(r, b, a)) {
                return FALSE;
            }
            r->neg = TRUE;
        } else {
            if (!BN_usub(r, a, b)) {
                return FALSE;
            }
            r->neg = FALSE;
        }
        return TRUE;
    }

    if (a->neg) { /* both are neg */
        r->neg = TRUE;
    } else {
        r->neg = FALSE;
    }

    if (!BN_uadd(r, a, b)) {
        return FALSE;
    }
    return TRUE;
}

/* unsigned add of b to a, r must be large enough */
BOOL BN_uadd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
    int i;

    if (a->top < b->top) {
        const BIGNUM *tmp = a;
        a = b;
        b = tmp;
    }
    int max = a->top;
    int min = b->top;

    if (bn_wexpand(r, max + 1) == NULL) {
        return FALSE;
    }

    r->top = max;

    u32 *ap = a->d;
    u32 *bp = b->d;
    u32 *rp = r->d;
    u32 carry = bn_add_words(rp, ap, bp, min);

    rp += min;
    ap += min;
    bp += min;
    i = min;

    if (carry) {
        while (i < max) {
            i++;
            u32 t1 = *ap++;
            if ((*rp++ = (t1 + 1) & BN_MASK2) >= t1) {
                carry = 0;
                break;
            }
        }
        if (i >= max && carry) {
            *rp++ = 1;
            r->top++;
        }
    }

    if (rp != ap) {
        for (; i < max; i++) {
            *rp++ = *ap++;
        }
    }

    return TRUE;
}

/* unsigned subtraction of b from a, a must be larger than b. */
BOOL BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
    u32 t1, t2;

    if (a->top < b->top) /* hmm... should not be happening */
    {
        return FALSE;
    }

    int max = a->top;
    int min = b->top;
    if (bn_wexpand(r, max) == NULL) {
        return FALSE;
    }

    u32 *ap = a->d;
    u32 *bp = b->d;
    u32 *rp = r->d;

    BOOL carry = FALSE;
    int i;
    for (i = 0; i < min; i++) {
        t1 = *ap++;
        t2 = *bp++;
        if (carry) {
            carry = t1 <= t2;
            t1 = (t1 - t2 - 1) & BN_MASK2;
        } else {
            carry = t1 < t2;
            t1 = (t1 - t2) & BN_MASK2;
        }
        *rp++ = t1 & BN_MASK2;
    }

    if (carry) /* subtracted */
    {
        while (i < max) {
            i++;
            t1 = *(ap++);
            t2 = (t1 - 1) & BN_MASK2;
            *rp++ = t2;
            if (t1 > t2) {
                break;
            }
        }
    }

    if (rp != ap) {
        while (TRUE) {
            if (i++ >= max) {
                break;
            }
            rp[0] = ap[0];
            if (i++ >= max) {
                break;
            }
            rp[1] = ap[1];
            if (i++ >= max) {
                break;
            }
            rp[2] = ap[2];
            if (i++ >= max) {
                break;
            }
            rp[3] = ap[3];
            rp += 4;
            ap += 4;
        }
    }

    r->top = max;
    bn_fix_top(r);
    return TRUE;
}

BOOL BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b)
{
    BOOL add = FALSE, neg = FALSE;

    /*  a -  b	a-b
     *  a - -b	a+b
     * -a -  b	-(a+b)
     * -a - -b	b-a
     */
    if (a->neg) {
        if (b->neg) {
            const BIGNUM *tmp = a;
            a = b;
            b = tmp;
        } else {
            add = TRUE;
            neg = TRUE;
        }
    } else {
        if (b->neg) {
            add = TRUE;
            neg = FALSE;
        }
    }

    if (add) {
        if (!BN_uadd(r, a, b)) {
            return FALSE;
        }
        r->neg = neg;
        return TRUE;
    }

    /* We are actually doing a - b :-) */

    int max = a->top > b->top ? a->top : b->top;
    if (bn_wexpand(r, max) == NULL) {
        return FALSE;
    }

    if (BN_ucmp(a, b) < 0) {
        if (!BN_usub(r, b, a)) {
            return FALSE;
        }
        r->neg = TRUE;
    } else {
        if (!BN_usub(r, a, b)) {
            return FALSE;
        }
        r->neg = FALSE;
    }

    return TRUE;
}

BOOL BN_mul(BIGNUM *r, BIGNUM *a, BIGNUM *b, BN_CTX *ctx)
{
    int top;

    int al = a->top;
    int bl = b->top;

    if (al == 0 || bl == 0) {
        BN_zero(r);
        return TRUE;
    }

    top = al + bl;
    BOOL neg = a->neg ^ b->neg;

    BIGNUM *rr;
    if (r == a || r == b) {
        rr = &ctx->bn[ctx->tos + 1];
    } else {
        rr = r;
    }

    /* asymmetric and >= 4 */
    if (bn_wexpand(rr, top) == NULL) {
        return FALSE;
    }

    rr->top = top;
    bn_mul_normal(rr->d, a->d, al, b->d, bl);
    r->neg = neg;

    bn_fix_top(rr);
    if (r != rr) {
        BN_copy(r, rr);
    }
    return TRUE;
}

void bn_mul_normal(u32 *r, u32 *a, int na, u32 *b, int nb)
{
    if (na < nb) {
        int itmp = na;
        na = nb;
        nb = itmp;
        u32 *ltmp = a;
        a = b;
        b = ltmp;
    }

    u32 *rr = &r[na];
    rr[0] = bn_mul_words(r, a, na, b[0]);

    while (TRUE) {
        if (--nb <= 0) {
            return;
        }
        rr[1] = bn_mul_add_words(&r[1], a, na, b[1]);
        if (--nb <= 0) {
            return;
        }
        rr[2] = bn_mul_add_words(&r[2], a, na, b[2]);
        if (--nb <= 0) {
            return;
        }
        rr[3] = bn_mul_add_words(&r[3], a, na, b[3]);
        if (--nb <= 0) {
            return;
        }
        rr[4] = bn_mul_add_words(&r[4], a, na, b[4]);
        rr += 4;
        r += 4;
        b += 4;
    }
}

BOOL BN_div(BIGNUM *dv, BIGNUM *rm, const BIGNUM *num, const BIGNUM *divisor, BN_CTX *ctx)
{
    int norm_shift, i, j, loop;
    BIGNUM *tmp, wnum, *snum, *sdiv, *res;
    u32 *resp, *wnump;
    u32 d0, d1;

    if (BN_is_zero(divisor)) {
        return FALSE;
    }

    if (BN_ucmp(num, divisor) < 0) {
        if (rm != NULL) {
            if (BN_copy(rm, num) == NULL) {
                return FALSE;
            }
        }
        if (dv != NULL) {
            BN_zero(dv);
        }
        return TRUE;
    }

    tmp = &ctx->bn[ctx->tos];
    tmp->neg = FALSE;
    snum = &ctx->bn[ctx->tos + 1];
    sdiv = &ctx->bn[ctx->tos + 2];
    if (dv == NULL) {
        res = &ctx->bn[ctx->tos + 3];
    } else {
        res = dv;
    }

    /* First we normalise the numbers */
    norm_shift = BN_BITS2 - BN_num_bits(divisor) % BN_BITS2;
    if (!BN_lshift(sdiv, divisor, norm_shift)) {
        return FALSE;
    }
    sdiv->neg = FALSE;
    norm_shift += BN_BITS2;
    if (!BN_lshift(snum, num, norm_shift)) {
        return FALSE;
    }
    snum->neg = FALSE;
    int div_n = sdiv->top;
    int num_n = snum->top;
    loop = num_n - div_n;

    /* Lets setup a 'window' into snum
     * This is the part that corresponds to the current
     * 'area' being divided */
    BN_init(&wnum);
    wnum.d = &snum->d[loop];
    wnum.top = div_n;
    wnum.max = snum->max + 1; /* a bit of a lie */

    /* Get the top 2 words of sdiv */
    d0 = sdiv->d[div_n - 1];
    d1 = div_n == 1 ? 0 : sdiv->d[div_n - 2];

    /* pointer to the 'top' of snum */
    wnump = &snum->d[num_n - 1];

    /* Setup to 'res' */

    if (bn_wexpand(res, loop + 1) == NULL) {
        goto err;
    }

    res->neg = num->neg ^ divisor->neg;
    res->top = loop;
    resp = &res->d[loop - 1];

    /* space for temp */
    if (bn_wexpand(tmp, div_n + 1) == NULL) {
        goto err;
    }

    if (BN_ucmp(&wnum, sdiv) >= 0) {
        if (!BN_usub(&wnum, &wnum, sdiv)) {
            goto err;
        }
        *resp = 1;
        res->d[res->top - 1] = 1;
    } else {
        res->top--;
    }
    resp--;

    for (i = 0; i < loop - 1; i++) {
        u32 q;

        wnum.d--;
        wnum.top++;
        u32 n0 = wnump[0];
        u32 n1 = wnump[-1];
        if (n0 == d0) {
            q = BN_MASK2;
        } else { /* n0 < d0 */
            q = bn_div_words(n0, n1, d0);
        }

        u32 t1h = n0;
        u32 t1l = n1;
        while (TRUE) {
            u32 t2l = LBITS(d1);
            u32 t2h = HBITS(d1);
            u32 t3l, t3h;
            u32 ql = LBITS(q);
            u32 qh = HBITS(q);
            mul64(t2l, t2h, ql, qh); /* t2=(BN_ULLONG)d1*q; */

            u32 t3t = LBITS(d0);
            t3h = HBITS(d0);
            mul64(t3t, t3h, ql, qh); /* t3=t1-(BN_ULLONG)q*d0; */
            t3l = (t1l - t3t) & BN_MASK2;
            if (t3l > t1l) {
                t3h++;
            }
            t3h = (t1h - t3h) & BN_MASK2;

            if (t3h) {
                break;
            }
            if (t2h < t3l) {
                break;
            }
            if (t2h == t3l && t2l <= wnump[-2]) {
                break;
            }

            q--;
        }

        tmp->d[div_n] = bn_mul_words(tmp->d, sdiv->d, div_n, q);
        for (j = div_n + 1; j > 0; j--) {
            if (tmp->d[j - 1]) {
                break;
            }
        }
        tmp->top = j;

        j = wnum.top;
        BN_sub(&wnum, &wnum, tmp);

        snum->top = snum->top + wnum.top - j;

        if (wnum.neg) {
            q--;
            j = wnum.top;
            BN_add(&wnum, &wnum, sdiv);
            snum->top += wnum.top - j;
        }
        *resp-- = q;
        wnump--;
    }
    bn_fix_top(snum);
    if (rm != NULL) {
        BOOL neg = num->neg;
        if (!BN_rshift(rm, snum, norm_shift)) {
            return FALSE;
        }
        rm->neg = neg;
    }
    return TRUE;
err:
    return FALSE;
}

/* rem != m */
BOOL BN_mod(BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx)
{
    return BN_div(NULL, rem, m, d, ctx);
}

BOOL BN_mod_exp(BIGNUM *r, BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx)
{
    if (BN_is_odd(m)) {
        return BN_mod_exp_mont(r, a, p, m, ctx, NULL);
    } else {
        return BN_mod_exp_recp(r, a, p, m, ctx);
    }
}

BOOL BN_sqr(BIGNUM *r, BIGNUM *a, BN_CTX *ctx)
{
    int max, al;

    BIGNUM *tmp = &ctx->bn[ctx->tos];
    BIGNUM *rr = a != r ? r : &ctx->bn[ctx->tos + 1];

    al = a->top;
    if (al <= 0) {
        r->top = 0;
        return TRUE;
    }

    max = al + al;
    if (bn_wexpand(rr, max) == NULL) {
        return FALSE;
    }
    rr->top = max;

    rr->neg = FALSE;
    if (al == 4) {
        u32 t[8];
        bn_sqr_normal(rr->d, a->d, 4, t);
    } else if (al == 8) {
        u32 t[16];
        bn_sqr_normal(rr->d, a->d, 8, t);
    } else {
        if (bn_wexpand(tmp, max) == NULL) {
            return FALSE;
        }
        bn_sqr_normal(rr->d, a->d, al, tmp->d);
    }

    if (max > 0 && rr->d[max - 1] == 0) {
        rr->top--;
    }
    if (rr != r) {
        BN_copy(r, rr);
    }
    return TRUE;
}

/* tmp must have 2*n words */
void bn_sqr_normal(u32 *r, u32 *a, int n, u32 *tmp)
{
    int i, j;

    int max = n * 2;
    u32 *ap = a;
    u32 *rp = r;
    rp[0] = rp[max - 1] = 0;
    rp++;
    j = n;

    if (--j > 0) {
        ap++;
        rp[j] = bn_mul_words(rp, ap, j, *a);
        rp += 2;
    }

    for (i = n - 2; i > 0; i--) {
        u32 *prevAP = ap;
        j--;
        ap++;
        rp[j] = bn_mul_add_words(rp, ap, j, *prevAP);
        rp += 2;
    }

    bn_add_words(r, r, r, max);

    /* There will not be a carry */

    bn_sqr_words(tmp, a, n);

    bn_add_words(r, r, tmp, max);
}

void bn_from_montgomery_words(u32 *param0, u32 *param1, u32 *param2, int param3, u32 param4)
{
    u32 v0 = 0;
    u32 *v1 = param1 + param3;
    int v2 = param4;

    for (int i = 0; i < param3; i++) {
        u32 v3 = bn_mul_add_words(param1, param2, param3, *param1 * v2);
        v3 += v0;

        *v1 += v3;
        if (v3 < v0) {
            v0 = 1;
        } else {
            v0 = 0;
        }

        if (*v1 < v3) {
            v0 += 1;
        }
        param1 += 1;
        v1 += 1;
    }

    int v4 = param3 - 1;
    if (v0 == 0) {
        if (param1[v4] == param2[v4] && v4 > 0) {
            do {
                if (param1[v4] != param2[v4]) {
                    break;
                }
                v4--;
            } while (v4 > 0);
        }
        if (param1[v4] >= param2[v4]) {
            v0 = 1;
        } else {
            v0 = 0;
        }
    }

    if (v0 != 0) {
        bn_sub_words(param0, param1, param2, param3);
        return;
    }

    for (int i = 0; i < param3; i++) {
        param0[i] = param1[i];
    }
}

u32 BN_mod_inverse_word(u32 word)
{
    u32 v0;
    u32 v1;

    u32 v2 = -word % word;
    v0 = word;
    u32 v3 = 0;
    v1 = 1;
    int v4 = -1;
    while (v2 != 0) {
        u32 v5 = v0 % v2;
        u32 v6 = v0 / v2;
        v6 *= v1;
        v6 += v3;
        v3 = v1;
        v1 = v6;
        v0 = v2;
        v2 = v5;
        v4 = -v4;
    }
    if (v4 < 0) {
        v3 = word - v3;
    }
    u32 ret;
    if (v0 != 1) {
        ret = 0;
    } else {
        ret = v3 % word;
    }
    return ret;
}

int BN_gen_exp_bits(BIGNUM *param0, u8 **param1, int unused, BN_CTX *param3)
{
    static const u8 Unk_ov97_0223DED0[] = { 0x0, 0x8, 0x1, 0x1, 0x1, 0x1, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0 };
    static const u8 Unk_ov97_0223DEDC[] = { 0x0, 0x8, 0x1, 0x1, 0x1, 0x4, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0 };
    static const u8 Unk_ov97_0223DEC4[] = { 0x0, 0x8, 0x1, 0x1, 0x1, 0x10, 0x1, 0x0, 0x0, 0x0, 0x0, 0x0 };

    int v0;
    int v1;
    int v2;
    u8 *v3 = NULL;
    BIGNUM *v4 = &param3->bn[param3->tos];
    int v5 = param0->top << 5;
    if (param0->top == 0) {
        return 0;
    }

    if (param0->top == 1) {
        if (BN_is_word(param0, 0x10001)) {
            v3 = (u8 *)Unk_ov97_0223DEC4;
        } else if (BN_is_word2(param0, 0x11)) {
            v3 = (u8 *)Unk_ov97_0223DEDC;
        } else if (BN_is_word2(param0, 3)) {
            v3 = (u8 *)Unk_ov97_0223DED0;
        }
        v0 = 1;
        v1 = 1;
        v2 = 32;
    } else if (v5 >= 256) {
        v0 = 5;
        v1 = 16;
        v2 = 7;
    } else if (v5 >= 128) {
        v0 = 4;
        v1 = 8;
        v2 = 8;
    } else {
        v0 = 3;
        v1 = 4;
        v2 = 11;
    }

    int v6;
    int v7 = ((param0->top * v2 * 2) + 7) / 4;
    if (v3 == NULL) {
        if (bn_wexpand(v4, v7) == NULL) {
            return 0;
        }

        v3 = (u8 *)v4->d;
        v6 = BN_gen_exp_string(v3 + 4, param0, v0) + 2;
        v3[0] = v6 >> 8;
        v3[1] = v6;
        v3[2] = v0;
        v3[3] = v1;
    } else {
        v6 = 8;
    }
    *param1 = v3;
    return v6 + 2;
}

int BN_gen_exp_string(u8 *param0, BIGNUM *param1, int param2)
{
    // clang-format off
    static const u8 Unk_ov97_0223DEF8[] = {
        0x6, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0, 0x3, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0, 0x4, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0, 0x3, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0,
		0x5, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0, 0x3, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0,
		0x4, 0x0, 0x1, 0x0, 0x2, 0x0, 0x1, 0x0,
		0x3, 0x0, 0x1, 0x0,
		0x2, 0x0,
		0x1,
		0x0
    };
    // clang-format on

    static const u8 *Unk_ov97_0223F158[] = {
        &Unk_ov97_0223DEF8[0x3F],
        &Unk_ov97_0223DEF8[0x3E],
        &Unk_ov97_0223DEF8[0x3C],
        &Unk_ov97_0223DEF8[0x38],
        &Unk_ov97_0223DEF8[0x30],
        &Unk_ov97_0223DEF8[0x20],
        &Unk_ov97_0223DEF8[0]
    };

    u8 *v0;
    int v1;
    u32 v2;
    u32 v3;
    u32 *v4;
    u32 v5;
    int v6;

    if (param2 > 6) {
        param2 = 6;
    }

    const u8 *v7 = Unk_ov97_0223F158[param2];
    v1 = (1 << param2) - 1;
    u32 v8 = 0;

    v0 = param0 + ((param2 + (param1->top << 5) - 1) / param2 * 2 + 2);
    *v0-- = 0;
    *v0-- = 0;
    int v9 = param1->top;
    v4 = param1->d + 1;
    v3 = param1->d[0];
    u32 v10 = param1->d[0];
    v2 = 0;
    if (v9 > 1) {
        v2 = *v4++;
    }
    v5 = 0;

    while (TRUE) {
        v6 = v10 & v1;
        if (v7[v6] != 0) {
            v5 += v7[v6];
            v8 += v7[v6];
            if (v8 >= 32) {
                if (v9 > 1) {
                    v9 -= 1;
                    v3 = v2;
                    if (v9 <= 1) {
                        v2 = 0;
                    } else {
                        v2 = *v4++;
                    }
                    v8 -= 32;
                } else {
                    // TODO: is there a way to match without this?
                    goto here;
                }
            }
            if (v8 == 0) {
                v10 = v3;
            } else {
                v10 = (v3 >> v8) | (v2 << (32 - v8));
            }
            continue;
        }
here:
        if (v6 != 0) {
            *v0-- = v5;
            *v0-- = v6;
            if (v5 >= 256) {
                for (; v5 >= 256; v5 -= 256) {
                    *v0-- = 0xFF;
                    *v0-- = 0;
                }
            }
            v5 = param2;
            v8 += param2;
            if (v8 >= 32) {
                if (v9 > 1) {
                    v9 -= 1;
                    v3 = v2;
                    v8 -= 32;
                    if (v9 <= 1) {
                        v2 = 0;
                    } else {
                        v2 = *v4++;
                    }
                } else {
                    break;
                }
            }
            if (v8 == 0) {
                v10 = v3;
            } else {
                v10 = (v3 >> v8) | (v2 << (32 - v8));
            }
        } else {
            break;
        }
    }
    v0++;
    int ret = 2;
    while (v0[0] || v0[1]) {
        param0[0] = v0[0];
        param0[1] = v0[1];
        param0 += 2;
        v0 += 2;
        ret += 2;
    }
    param0[0] = 0;
    param0[1] = 0;
    return ret;
}

BOOL BN_MONT_CTX_set_word(BN_MONT_CTX *mont, const BIGNUM *modulus, BN_CTX *ctx)
{
    BIGNUM Ri;

    if (modulus->top == 0) {
        return FALSE;
    }

    BIGNUM *R = &mont->RR; /* grab RR as a temp */
    if (!BN_copy(&mont->N, modulus)) { /* Set N */
        return FALSE;
    }
    BN_init(&Ri);

    mont->use_word = 1;

    mont->ri = (BN_num_bits(modulus) + (BN_BITS2 - 1)) / BN_BITS2;
    if (!BN_zero(R)) {
        return FALSE;
    }

    if (!BN_set_bit(R, BN_BITS2)) {
        goto err; /* R */
    }

    u32 word = modulus->d[0];
    /* Ri = R^-1 mod N*/
    if (BN_set_word(&Ri, BN_mod_inverse_word(word)) == 0) {
        goto err;
    }
    if (!BN_lshift(&Ri, &Ri, BN_BITS2)) { /* R*Ri */
        goto err;
    }
    if (Ri.top != 0 && (Ri.top != 1 || Ri.d[0])) {
        BN_sub_word(&Ri, 1);
    } else /* if N mod word size == 1 */ {
        if (!BN_set_word(&Ri, BN_MASK2)) { /* Ri-- (mod word size) */
            goto err;
        }
    }

    mont->n0 = bn_div_words(Ri.top >= 2 ? Ri.d[1] : 0, Ri.top >= 1 ? Ri.d[0] : 0, word);

    /* setup RR for conversions */
    BN_zero(&mont->RR);
    if (!BN_set_bit(&mont->RR, mont->ri * 64)) {
        goto err;
    }
    BN_mod(&mont->RR, &mont->RR, &mont->N, ctx);
    bn_zexpand(&mont->RR, mont->ri);
err:
    BN_free(&Ri);
    return TRUE;
}

BN_MONT_CTX *BN_MONT_CTX_new(void)
{
    BN_MONT_CTX *ret = CRYPTOi_MyAlloc(sizeof(BN_MONT_CTX));

    if (ret == NULL) {
        return NULL;
    }

    BN_MONT_CTX_init(ret);
    ret->flags = BN_FLG_MALLOCED;
    return ret;
}

void BN_MONT_CTX_init(BN_MONT_CTX *ctx)
{
    ctx->use_word = 0;
    ctx->ri = 0;
    BN_init(&ctx->RR);
    BN_init(&ctx->N);
    BN_init(&ctx->Ni);
    ctx->flags = 0;
}

void BN_MONT_CTX_free(BN_MONT_CTX *mont)
{
    BN_free(&mont->RR);
    BN_free(&mont->N);
    BN_free(&mont->Ni);
    if (mont->flags & BN_FLG_MALLOCED) {
        CRYPTOi_MyFree(mont);
    }
}

void BN_RECP_CTX_init(BN_RECP_CTX *recp)
{
    BN_init(&recp->N);
    BN_init(&recp->Nr);
    recp->num_bits = 0;
    recp->flags = 0;
}

void BN_RECP_CTX_free(BN_RECP_CTX *recp)
{
    BN_free(&recp->N);
    BN_free(&recp->Nr);
    if (recp->flags & BN_FLG_MALLOCED) {
        CRYPTOi_MyFree(recp);
    }
}

int BN_RECP_CTX_set(BN_RECP_CTX *recp, const BIGNUM *d, BN_CTX *ctx)
{
    BN_copy(&recp->N, d);
    BN_zero(&recp->Nr);
    recp->num_bits = BN_num_bits(d);
    recp->shift = 0;
    return 1;
}

BOOL BN_mod_mul_reciprocal(BIGNUM *r, BIGNUM *x, BIGNUM *y, BN_RECP_CTX *recp, BN_CTX *ctx)
{
    int ret = FALSE;

    BIGNUM *a = &ctx->bn[ctx->tos++];
    if (y != NULL) {
        if (x == y) {
            if (!BN_sqr(a, x, ctx)) {
                goto err;
            }
        } else {
            if (!BN_mul(a, x, y, ctx)) {
                goto err;
            }
        }
    } else {
        a = x; /* Just do the mod */
    }

    BN_div_recp(NULL, r, a, recp, ctx);
    ret = TRUE;
err:
    ctx->tos--;
    return ret;
}

BOOL BN_div_recp(BIGNUM *dv, BIGNUM *rem, BIGNUM *m, BN_RECP_CTX *recp, BN_CTX *ctx)
{
    BOOL ret = FALSE;

    int tos = ctx->tos;
    BIGNUM *a = &ctx->bn[ctx->tos++];
    BIGNUM *b = &ctx->bn[ctx->tos++];
    BIGNUM *d, *r;
    if (dv != NULL) {
        d = dv;
    } else {
        d = &ctx->bn[ctx->tos++];
    }
    if (rem != NULL) {
        r = rem;
    } else {
        r = &ctx->bn[ctx->tos++];
    }

    if (BN_ucmp(m, &recp->N) < 0) {
        BN_zero(d);
        BN_copy(r, m);
        ctx->tos = tos;
        return TRUE;
    }

    /* We want the remainder
     * Given input of ABCDEF / ab
     * we need multiply ABCDEF by 3 digests of the reciprocal of ab
     *
     */
    int i = BN_num_bits(m);

    int j = recp->num_bits * 2;
    int ex;
    if (j > i) {
        i = j;
        ex = 0;
    } else {
        ex = (i - j) / 2;
    }

    j = i / 2;

    if (i != recp->shift) {
        recp->shift = BN_reciprocal(&recp->Nr, &recp->N, i, ctx);
    }

    if (!BN_rshift(a, m, j - ex)) {
        goto err;
    }
    if (!BN_mul(b, a, &recp->Nr, ctx)) {
        goto err;
    }
    if (!BN_rshift(d, b, j + ex)) {
        goto err;
    }
    d->neg = FALSE;
    if (!BN_mul(b, &recp->N, d, ctx)) {
        goto err;
    }
    if (!BN_usub(r, m, b)) {
        goto err;
    }
    r->neg = FALSE;

    j = 0;

    while (BN_ucmp(r, &recp->N) >= 0) {
        if (j++ > 2) {
            goto err;
        }
        if (!BN_usub(r, r, &recp->N)) {
            goto err;
        }
        if (!BN_add_word(d, 1)) {
            goto err;
        }
    }

    r->neg = BN_is_zero(r) ? 0 : m->neg;
    d->neg = m->neg ^ recp->N.neg;
    ret = TRUE;
err:
    ctx->tos = tos;
    return ret;
}

/* len is the expected size of the result
 * We actually calculate with an extra word of precision, so
 * we can do faster division if the remainder is not required.
 */
int BN_reciprocal(BIGNUM *r, BIGNUM *m, int len, BN_CTX *ctx)
{
    int ret = -1;
    BIGNUM t;

    BN_init(&t);

    BN_zero(&t);
    if (!BN_set_bit(&t, len)) {
        goto err;
    }

    if (!BN_div(r, NULL, &t, m, ctx)) {
        goto err;
    }
    ret = len;
err:
    BN_free(&t);
    return ret;
}

/* Divide h-l by d and return the result. */
/* I need to test this some more :-( */
u32 bn_div_words(u32 h, u32 l, u32 d)
{
    u32 ret = 0;
    u32 dh, dl, q;
    int count = 2;

    if (d == 0) {
        return BN_MASK2;
    }

    int i = BN_num_bits_word(d);
    if (i != BN_BITS2 && h > 1 << i) {
        return 0;
    }
    i = BN_BITS2 - i;
    if (h >= d) {
        h -= d;
    }

    if (i) {
        d <<= i;
        h = (h << i) | (l >> (BN_BITS2 - i));
        l <<= i;
    }
    dh = BN_MASK2l & (d >> BN_BITS4);
    dl = d & BN_MASK2l;
    while (TRUE) {
        if (h >> BN_BITS4 == dh) {
            q = BN_MASK2l;
        } else {
            q = h / dh;
        }

        u32 th = q * dh;
        u32 tl = q * dl;
        u32 t;
        while (TRUE) {
            t = h - th;
            if (t & BN_MASK2h || tl <= (t << BN_BITS4) + (BN_MASK2l & (l >> BN_BITS4))) {
                break;
            }
            th -= dh;
            tl -= dl;
            q--;
        }
        th = q * dh;
        t = q * dl >> BN_BITS4;
        tl = (q * dl & BN_MASK2l) << BN_BITS4;
        th += t;

        if (l < tl) {
            th++;
        }
        l -= tl;
        if (h < th) {
            h += d;
            q--;
        }
        h -= th;

        if (--count == 0) {
            break;
        }

        ret = (q & BN_MASK2l) << BN_BITS4;
        h = ((h << BN_BITS4) | (l >> BN_BITS4)) & BN_MASK2;
        l = (l & BN_MASK2l) << BN_BITS4;
    }
    ret |= q;
    return ret;
}

BOOL BN_mod_exp_recp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx)
{
    int i, j;
    BOOL ret = FALSE;
    int start = 1, ts = 0;
    BIGNUM val[16];
    BN_RECP_CTX recp;

    int bits = BN_num_bits(p);
    if (BN_is_zero(a)) {
        BN_zero(r);
        return TRUE;
    }

    if (BN_is_zero(p)) {
        BN_one(r);
        return TRUE;
    }

    if (BN_is_one(p)) {
        BN_copy(r, a);
        return TRUE;
    }

    BN_RECP_CTX_init(&recp);
    if (BN_RECP_CTX_set(&recp, m, ctx) <= 0) {
        goto err;
    }

    BN_init(&val[0]);
    BIGNUM *aa = &ctx->bn[ctx->tos++];
    ts = 1;

    if (!BN_mod(&val[0], a, m, ctx)) {
        goto err; /* 1 */
    }
    if (!BN_mod_mul_reciprocal(aa, &val[0], &val[0], &recp, ctx)) {
        goto err; /* 2 */
    }

    int window;
    if (bits <= 17) { /* This is probably 3 or 0x10001, so just do singles */
        window = 1;
    } else if (bits >= 256) {
        window = 5; /* max size of window */
    } else if (bits >= 128) {
        window = 4;
    } else {
        window = 3;
    }

    j = 1 << (window - 1);
    for (i = 1; i < j; i++) {
        BN_init(&val[i]);
        if (!BN_mod_mul_reciprocal(&val[i], &val[i - 1], aa, &recp, ctx)) {
            goto err;
        }
    }
    ts = i;

    start = 1; /* This is used to avoid multiplication etc
                * when there is only the value '1' in the
                * buffer. */
    int wstart, wend;
    int wvalue = 0; /* The 'value' of the window */
    wstart = bits - 1; /* The top bit of the window */
    wend = 0; /* The bottom bit of the window */

    if (!BN_one(r)) {
        goto err;
    }

    while (TRUE) {
        if (!BN_is_bit_set(p, wstart)) {
            if (!start) {
                if (!BN_mod_mul_reciprocal(r, r, r, &recp, ctx)) {
                    goto err;
                }
            }
            if (wstart == 0) {
                break;
            }
            wstart--;
            continue;
        }
        /* We now have wstart on a 'set' bit, we now need to work out
         * how bit a window to do.  To do this we need to scan
         * forward until the last set bit before the end of the
         * window */
        j = wstart;
        wvalue = 1;
        wend = 0;
        for (i = 1; i < window; i++) {
            if (wstart - i < 0) {
                break;
            }
            if (BN_is_bit_set(p, wstart - i)) {
                wvalue <<= (i - wend);
                wvalue |= 1;
                wend = i;
            }
        }

        /* wend is the size of the current window */
        j = wend + 1;
        /* add the 'bytes above' */
        if (!start) {
            for (i = 0; i < j; i++) {
                if (!BN_mod_mul_reciprocal(r, r, r, &recp, ctx)) {
                    goto err;
                }
            }
        }

        /* wvalue will be an odd number < 2^window */
        if (!BN_mod_mul_reciprocal(r, r, &val[wvalue >> 1], &recp, ctx)) {
            goto err;
        }

        /* move the 'window' down further */
        wstart -= wend + 1;
        wvalue = 0;
        start = 0;
        if (wstart < 0) {
            break;
        }
    }
    ret = TRUE;
err:
    ctx->tos--;
    for (i = 0; i < ts; i++) {
        BN_clear_free(&val[i]);
    }
    BN_RECP_CTX_free(&recp);
    return ret;
}

// clang-format off
extern void _s32_div_f(void);
// TODO: decompile this
asm BOOL BN_mod_exp_mont(BIGNUM *rr, BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *in_mont) {
    stmdb sp!, {r4, r5, r6, r7, r8, sb, r10, r11, lr}
	sub sp, sp, #0x7c
	mov r4, #0
	mov r5, r3
	mov r3, r4
	str r3, [sp, #0x34]
	ldr r3, [r5, #0]
	str r0, [sp, #4]
	mov r0, r4
	ldr r3, [r3, #0]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	ands r0, r3, #1
	ldr r0, [sp, #0xa0]
	str r4, [sp, #8]
	str r0, [sp, #0xa0]
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x7c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, r10, r11, lr}
	bxeq lr
	ldr r1, [r7, #4]
	ldr r0, [r0, #0]
	cmp r1, #0
	str r0, [sp, #0xc]
	beq _02239AF8
	cmp r1, #1
	bne _02239B14
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02239B14
_02239AF8:
	ldr r0, [sp, #4]
	mov r1, #0
	bl BN_set_word
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, r10, r11, lr}
	bx lr
_02239B14:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02239B38
	cmp r1, #1
	bne _02239B54
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02239B54
_02239B38:
	ldr r0, [sp, #4]
	mov r1, #1
	bl BN_set_word
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, r10, r11, lr}
	bx lr
_02239B54:
	cmp r1, #1
	bne _02239B88
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02239B88
	ldr r0, [sp, #4]
	mov r1, r7
	bl BN_copy
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, r10, r11, lr}
	bx lr
_02239B88:
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02239BBC
	bl BN_MONT_CTX_new
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _0223A218
	ldr r2, [sp, #0xa0]
	mov r1, r5
	bl BN_MONT_CTX_set_word
	cmp r0, #0
	beq _0223A218
_02239BBC:
	ldr r3, [sp, #0xa0]
	add r1, sp, #0x34
	mov r4, r3
	ldr r4, [r4, #0x10c]
	mov r0, r6
	mov r2, #0
	str r4, [sp, #0x1c]
	bl BN_gen_exp_bits
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0, #0]
	ldr r0, [sp, #0x34]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	str r0, [sp, #0x10]
	add r0, r1, #0x3f
	bl _s32_div_f
	ldr r1, [sp, #0x34]
	mov r4, r0
	add r0, r1, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldr r3, [r7, #4]
	ldr r10, [r0, #0x24]
	cmp r3, r10
	bne _02239C54
	ldr r1, [r7, #0]
	sub r2, r10, #1
	ldr r0, [r5, #0]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	cmp r1, r0
	strlo r7, [sp, #0x14]
	blo _02239D0C
_02239C54:
	cmp r3, r10
	bge _02239CC8
	ldr r0, [sp, #0xa0]
	ldr r3, [r0, #0]
	add r1, r0, #4
	add r2, r3, #1
	str r2, [r0, #0]
	mov r0, #0x14
	mla r0, r3, r0, r1
	ldr r2, [r7, #4]
	mov r1, r0
	str r2, [r1, #4]
	mov r1, r10
	str r0, [sp, #0x14]
	bl bn_zexpand
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	ble _02239D0C
_02239CA0:
	ldr r1, [r7, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, #0]
	str r1, [r0, r2, lsl #2]
	ldr r0, [r7, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _02239CA0
	b _02239D0C
_02239CC8:
	ldr r0, [sp, #0xa0]
	mov r2, r5
	ldr r3, [r0, #0]
	mov r1, r7
	add r5, r3, #1
	str r5, [r0, #0]
	add r5, r0, #4
	mov r0, #0x14
	mla r0, r3, r0, r5
	ldr r3, [sp, #0xa0]
	str r0, [sp, #0x14]
	bl BN_mod
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0x14]
	mov r1, r10
	bl bn_zexpand
_02239D0C:
	ldr r0, [sp, #0xa0]
	ldr r3, [r0, #0]
	ldr r0, [r6, #4]
	add r1, r3, #1
	mul r2, r0, r4
	ldr r0, [sp, #0xa0]
	mov r4, r2, lsl #1
	str r1, [r0, #0]
	ldr r1, [r0, #0]
	add r4, r4, #7
	add r2, r1, #1
	str r2, [r0, #0]
	ldr r2, [sp, #0x10]
	ldr r0, [r0, #0]
	mul r5, r2, r10
	mov r2, r4, asr #1
	add r2, r4, r2, lsr #30
	add r5, r5, r2, asr #2
	ldr r2, [sp, #0xa0]
	mov r6, #0x14
	add r2, r2, #4
	mla r8, r1, r6, r2
	mla r4, r3, r6, r2
	ldr r1, [sp, #0xa0]
	add r3, r0, #1
	mla r7, r0, r6, r2
	str r3, [r1, #0]
	mov r0, r1
	ldr r0, [r0, #0]
	mla r6, r0, r6, r2
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp r10, r0
	ldrle r0, [sp, #4]
	ble _02239DB0
	ldr r0, [sp, #4]
	mov r1, r10
	bl bn_expand2
_02239DB0:
	cmp r0, #0
	beq _0223A218
	ldr r0, [r8, #8]
	mov r1, r10, lsl #2
	cmp r1, r0
	movle r0, r8
	ble _02239DD4
	mov r0, r8
	bl bn_expand2
_02239DD4:
	cmp r0, #0
	beq _0223A218
	ldr r1, [r7, #8]
	mov r0, r10, lsl #1
	str r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r7
	ble _02239E00
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl bn_expand2
_02239E00:
	cmp r0, #0
	beq _0223A218
	ldr r0, [r4, #8]
	cmp r5, r0
	movle r0, r4
	ble _02239E24
	mov r1, r5
	mov r0, r4
	bl bn_expand2
_02239E24:
	cmp r0, #0
	beq _0223A218
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r6
	ble _02239E4C
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl bn_expand2
_02239E4C:
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0x18]
	ldr r11, [r8]
	ldr r8, [r7]
	ldr r6, [r6, #0]
	ldr r1, [r4, #0]
	ldr r7, [r0, #0x48]
	ldr r5, [r0, #0x20]
	ldr r3, [sp, #0x18]
	str r1, [sp, #0x38]
	str r10, [sp]
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0xc]
	ldr r1, [r1, #0]
	mov r0, r6
	mov r2, r10
	bl bn_mul_normal
	str r7, [sp]
	ldr r0, [sp, #0x38]
	mov r1, r6
	mov r2, r5
	mov r3, r10
	bl bn_from_montgomery_words
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ble _02239F54
	ldr r1, [sp, #0x38]
	mov r0, r6
	mov r2, r10
	mov r3, r11
	bl bn_sqr_normal
	mov r0, r11
	mov r1, r6
	mov r2, r5
	mov r3, r10
	str r7, [sp]
	bl bn_from_montgomery_words
	ldr r0, [sp, #0x10]
	mov r4, #1
	cmp r0, #1
	ble _02239F54
	mov r0, r10, lsl #2
	str r0, [sp, #0x28]
	add sb, sp, #0x38
_02239F00:
	sub r3, r4, #1
	ldr r2, [sb, r3, lsl #2]
	ldr r1, [sp, #0x28]
	mov r0, r6
	add r1, r2, r1
	str r1, [sb, r4, lsl #2]
	str r10, [sp]
	ldr r1, [sb, r3, lsl #2]
	mov r2, r10
	mov r3, r11
	bl bn_mul_normal
	str r7, [sp]
	ldr r0, [sb, r4, lsl #2]
	mov r1, r6
	mov r2, r5
	mov r3, r10
	bl bn_from_montgomery_words
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _02239F00
_02239F54:
	ldr r3, [sp, #0x34]
	add r0, r3, #1
	str r0, [sp, #0x34]
	add r2, r0, #1
	ldrb r1, [r3]
	str r2, [sp, #0x34]
	ldrb sb, [r3, #1]
	cmp sb, #0xFF
	bne _02239FD4
	cmp r1, #0
	bne _02239FD4
	add r0, r2, #1
	str r0, [sp, #0x34]
	ldrb r1, [r2]
	b _02239FA4
_02239F90:
	add sb, sb, #0x100
	ldr r1, [sp, #0x34]
	add r1, r1, #2
	str r1, [sp, #0x34]
	ldrb r1, [r0, #1]
_02239FA4:
	ldr r0, [sp, #0x34]
	ldrb r2, [r0]
	cmp r2, #0xFF
	bne _02239FBC
	cmp r1, #0
	beq _02239F90
_02239FBC:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r0, [r0]
	add r0, r0, #1
	add sb, sb, r0
_02239FD4:
	mov r2, r1, asr #1
	add r0, sp, #0x38
	ldr r0, [r0, r2, lsl #2]
	mov r1, r8
	mov r2, r10, lsl #2
	bl MI_CpuCopy8
	cmp sb, #0
	beq _0223A1AC
	mov r0, #0xFF
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
_0223A004:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223A038
	mov r3, r0
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r3, [r3, #0]
	blx r3
	cmp r0, #0
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	bne _0223A218
_0223A038:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _0223A218
	cmp sb, #0
	ldr r4, [sp, #0x30]
	ble _0223A08C
_0223A054:
	mov r0, r6
	mov r1, r8
	mov r2, r10
	mov r3, r11
	bl bn_sqr_normal
	str r7, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r10
	bl bn_from_montgomery_words
	add r4, r4, #1
	cmp r4, sb
	blt _0223A054
_0223A08C:
	ldr r2, [sp, #0x34]
	add r0, r2, #1
	str r0, [sp, #0x34]
	add r1, r0, #1
	ldrb r0, [r2]
	str r1, [sp, #0x34]
	ldrb sb, [r2, #1]
	cmp sb, #0xFF
	bne _0223A10C
	cmp r0, #0
	bne _0223A10C
	add r0, r1, #1
	str r0, [sp, #0x34]
	ldrb r0, [r1]
	b _0223A0DC
_0223A0C8:
	add sb, sb, #0x100
	ldr r0, [sp, #0x34]
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldrb r0, [r1, #1]
_0223A0DC:
	ldr r1, [sp, #0x34]
	ldrb r2, [r1]
	cmp r2, #0xFF
	bne _0223A0F4
	cmp r0, #0
	beq _0223A0C8
_0223A0F4:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r1, [r1]
	add r1, r1, #1
	add sb, sb, r1
_0223A10C:
	cmp r0, #0
	bne _0223A11C
	cmp sb, #0
	beq _0223A1AC
_0223A11C:
	cmp sb, #0
	bne _0223A12C
	cmp r0, #1
	beq _0223A168
_0223A12C:
	mov r1, r0, asr #1
	str r10, [sp]
	add r0, sp, #0x38
	ldr r3, [r0, r1, lsl #2]
	mov r0, r6
	mov r1, r8
	mov r2, r10
	bl bn_mul_normal
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r10
	str r7, [sp]
	bl bn_from_montgomery_words
	b _0223A1A4
_0223A168:
	ldr r0, [sp, #0x14]
	str r10, [sp]
	ldr r3, [r0, #0]
	mov r0, r6
	mov r1, r8
	mov r2, r10
	bl bn_mul_normal
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0, #0]
	mov r1, r6
	mov r2, r5
	mov r3, r10
	bl bn_from_montgomery_words
	b _0223A1F0
_0223A1A4:
	cmp sb, #0
	bne _0223A004
_0223A1AC:
	ldr r0, [sp, #0x24]
	mov r2, r10
	cmp r10, r0
	bge _0223A1D4
	mov r1, #0
_0223A1C0:
	ldr r0, [sp, #0x24]
	str r1, [r8, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	blt _0223A1C0
_0223A1D4:
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0, #0]
	mov r1, r8
	mov r2, r5
	mov r3, r10
	bl bn_from_montgomery_words
_0223A1F0:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _0223A218
	ldr r0, [sp, #4]
	mov r1, r0
	str r10, [r1, #4]
	bl bn_fix_top
	mov r0, #1
	str r0, [sp, #8]
_0223A218:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223A240
	ldr r3, [r0, #0]
	mov r1, #0xFF
	mvn r2, #0
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #8]
_0223A240:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _0223A25C
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0223A25C
	bl BN_MONT_CTX_free
_0223A25C:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #8]
	str r2, [r1, #0]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, r10, r11, lr}
	bx lr
}
// clang-format on
