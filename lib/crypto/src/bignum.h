/* Copyright (C) 1995-1997 Eric Young (eay@cryptsoft.com)
 * All rights reserved.
 *
 * This package is an SSL implementation written
 * by Eric Young (eay@cryptsoft.com).
 * The implementation was written so as to conform with Netscapes SSL.
 *
 * This library is free for commercial and non-commercial use as long as
 * the following conditions are aheared to.  The following conditions
 * apply to all code found in this distribution, be it the RC4, RSA,
 * lhash, DES, etc., code; not just the SSL code.  The SSL documentation
 * included with this distribution is covered by the same copyright terms
 * except that the holder is Tim Hudson (tjh@cryptsoft.com).
 *
 * Copyright remains Eric Young's, and as such any Copyright notices in
 * the code are not to be removed.
 * If this package is used in a product, Eric Young should be given attribution
 * as the author of the parts of the library used.
 * This can be in the form of a textual message at program startup or
 * in documentation (online or textual) provided with the package.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *    "This product includes cryptographic software written by
 *     Eric Young (eay@cryptsoft.com)"
 *    The word 'cryptographic' can be left out if the rouines from the library
 *    being used are not cryptographic related :-).
 * 4. If you include any Windows specific code (or a derivative thereof) from
 *    the apps directory (application code) you must include an acknowledgement:
 *    "This product includes software written by Tim Hudson (tjh@cryptsoft.com)"
 *
 * THIS SOFTWARE IS PROVIDED BY ERIC YOUNG ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * The licence and distribution terms for any publically available version or
 * derivative of this code cannot be changed.  i.e. this code cannot simply be
 * copied and put under another distribution licence
 * [including the GNU Public Licence.]
 */

#ifndef HEADER_BN_H
#define HEADER_BN_H

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>

#define BN_BITS     64
#define BN_BYTES    4
#define BN_BITS2    32
#define BN_BITS4    16
#define BN_MASK     (0xffffffffffffffffLL)
#define BN_MASK2    (0xffffffffL)
#define BN_MASK2l   (0xffff)
#define BN_MASK2h1  (0xffff8000L)
#define BN_MASK2h   (0xffff0000L)
#define BN_TBIT     (0x80000000L)
#define BN_DEC_CONV (1000000000L)
#define BN_DEC_FMT1 "%lu"
#define BN_DEC_FMT2 "%09lu"
#define BN_DEC_NUM  9

#define BN_DEFAULT_BITS 1280

#ifdef BIGNUM
#undef BIGNUM
#endif

#define BN_FLG_MALLOCED    0x01
#define BN_FLG_STATIC_DATA 0x02
#define BN_FLG_FREE        0x8000 /* used for debuging */
#define BN_set_flags(b, n) ((b)->flags |= (n))
#define BN_get_flags(b, n) ((b)->flags & (n))

typedef struct bignum_st {
    u32 *d; /* Pointer to an array of 'BN_BITS2' bit chunks. */
    int top; /* Index of last used d +1. */
    /* The next are internal book keeping for bn_expand. */
    int max; /* Size of the d array. */
    BOOL neg; /* one if the number is negative */
    int flags;
} BIGNUM;

/* Used for temp variables */
#define BN_CTX_NUM 12
typedef struct bignum_ctx {
    int tos;
    BIGNUM bn[BN_CTX_NUM + 1];
    int flags;
    char padding[4];
} BN_CTX;

typedef struct bn_blinding_st {
    int init;
    BIGNUM *A;
    BIGNUM *Ai;
    BIGNUM *mod; /* just a reference */
} BN_BLINDING;

/* Used for montgomery multiplication */
typedef struct bn_mont_ctx_st {
    int use_word; /* 0 for word form, 1 for bignum form */
    char padding[4];
    int ri; /* number of bits in R */
    BIGNUM RR; /* used to convert to montgomery form */
    BIGNUM N; /* The modulus */
    BIGNUM Ni; /* R*(1/R mod N) - N*Ni = 1
                * (Ni is only stored for bignum algorithm) */
    u32 n0; /* least significant word of Ni */
    int flags;
} BN_MONT_CTX;

/* Used for reciprocal division/mod functions
 * It cannot be shared between threads
 */
typedef struct bn_recp_ctx_st {
    BIGNUM N; /* the divisor */
    BIGNUM Nr; /* the reciprocal */
    int num_bits;
    int shift;
    int flags;
} BN_RECP_CTX;

#define BN_to_montgomery(r, a, mont, ctx) BN_mod_mul_montgomery( \
    r, a, &((mont)->RR), (mont), ctx)

#define BN_num_bytes(a)   ((BN_num_bits(a) + 7) / 8)
#define BN_is_word(a, w)  (((a)->top == 1) && ((a)->d[0] == (u32)(w)))
#define BN_is_word2(a, w) (((a)->d[0] == (u32)(w)) && ((a)->top == 1)) // because somebody would rather type stuff out in the wrong order than use the above macro
#define BN_is_zero(a)     (((a)->top == 0) || BN_is_word(a, 0))
#define BN_is_one(a)      (BN_is_word((a), 1))
#define BN_is_odd(a)      (((a)->top > 0) && ((a)->d[0] & 1))
#define BN_one(a)         (BN_set_word((a), 1))
#define BN_zero(a)        (BN_set_word((a), 0))

#define bn_expand(n, b)  ((((((b + BN_BITS2 - 1)) / BN_BITS2)) <= (n)->max) ? (n) : bn_expand2((n), (b) / BN_BITS2 + 1))
#define bn_wexpand(n, b) (((b) <= (n)->max) ? (n) : bn_expand2((n), (b)))

void bn_fix_top(BIGNUM *a);
void bn_zexpand(BIGNUM *bn, int bits);

BN_CTX *BN_CTX_new(void);
void BN_CTX_init(BN_CTX *c);
void BN_CTX_free(BN_CTX *c);
int BN_num_bits(const BIGNUM *a);
int BN_num_bits_word(u32 l);
BIGNUM *BN_new(void);
void BN_init(BIGNUM *a);
void BN_clear_free(BIGNUM *a);
BIGNUM *BN_copy(BIGNUM *a, const BIGNUM *b);
BIGNUM *BN_bin2bn(const u8 *s, int len, BIGNUM *ret);
int BN_bn2bin(const BIGNUM *a, u8 *to);
BOOL BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
BOOL BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
BOOL BN_uadd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
BOOL BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
BOOL BN_mod(BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx);
BOOL BN_div(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx);
BOOL BN_mul(BIGNUM *r, BIGNUM *a, BIGNUM *b, BN_CTX *ctx);
BOOL BN_sqr(BIGNUM *r, BIGNUM *a, BN_CTX *ctx);
BOOL BN_add_word(BIGNUM *a, u32 w);
BOOL BN_sub_word(BIGNUM *a, u32 w);
BOOL BN_set_word(BIGNUM *a, u32 w);
void BN_free(BIGNUM *a);
BOOL BN_is_bit_set(const BIGNUM *a, int n);
BOOL BN_lshift(BIGNUM *r, const BIGNUM *a, int n);
BOOL BN_mod_exp(BIGNUM *r, BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx);
BOOL BN_mod_exp_mont(BIGNUM *r, BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_reciprocal(BIGNUM *r, BIGNUM *m, int len, BN_CTX *ctx);
BOOL BN_rshift(BIGNUM *r, BIGNUM *a, int n);
void BN_clear(BIGNUM *a);
BIGNUM *bn_expand2(BIGNUM *b, int bits);
int BN_ucmp(const BIGNUM *a, const BIGNUM *b);
BOOL BN_set_bit(BIGNUM *a, int n);
u32 BN_mod_inverse_word(u32 word);

u32 bn_mul_add_words(u32 *rp, u32 *ap, int num, u32 w);
u32 bn_mul_words(u32 *rp, u32 *ap, int num, u32 w);
void bn_sqr_words(u32 *rp, u32 *ap, int num);
u32 bn_div_words(u32 h, u32 l, u32 d);
u32 bn_add_words(u32 *rp, u32 *ap, u32 *bp, int num);
u32 bn_sub_words(u32 *rp, u32 *ap, u32 *bp, int num);

BN_MONT_CTX *BN_MONT_CTX_new(void);
void BN_MONT_CTX_init(BN_MONT_CTX *ctx);
void BN_MONT_CTX_free(BN_MONT_CTX *mont);
BOOL BN_MONT_CTX_set_word(BN_MONT_CTX *mont, const BIGNUM *modulus, BN_CTX *ctx);
void bn_from_montgomery_words(u32 *param0, u32 *param1, u32 *param2, int param3, u32 param4);

void BN_RECP_CTX_init(BN_RECP_CTX *recp);
void BN_RECP_CTX_free(BN_RECP_CTX *recp);
int BN_RECP_CTX_set(BN_RECP_CTX *recp, const BIGNUM *rdiv, BN_CTX *ctx);
BOOL BN_mod_mul_reciprocal(BIGNUM *r, BIGNUM *x, BIGNUM *y, BN_RECP_CTX *recp, BN_CTX *ctx);
BOOL BN_mod_exp_recp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, const BIGNUM *m, BN_CTX *ctx);
BOOL BN_div_recp(BIGNUM *dv, BIGNUM *rem, BIGNUM *m, BN_RECP_CTX *recp, BN_CTX *ctx);

int BN_gen_exp_bits(BIGNUM *param0, u8 **param1, int unused, BN_CTX *param3);
int BN_gen_exp_string(u8 *param0, BIGNUM *param1, int param2);

#define LBITS(a)   ((a) & BN_MASK2l)
#define HBITS(a)   (((a) >> BN_BITS4) & BN_MASK2l)
#define L2HBITS(a) ((u32)((a) & BN_MASK2l) << BN_BITS4)

#define mul64(l, h, bl, bh)        \
    {                              \
        u32 m, m1, lt, ht;         \
                                   \
        lt = l;                    \
        ht = h;                    \
        m = (bh) * (lt);           \
        lt = (bl) * (lt);          \
        m1 = (bl) * (ht);          \
        ht = (bh) * (ht);          \
        m = (m + m1) & BN_MASK2;   \
        if (m < m1)                \
            ht += L2HBITS(1L);     \
        ht += HBITS(m);            \
        m1 = L2HBITS(m);           \
        lt = (lt + m1) & BN_MASK2; \
        if (lt < m1)               \
            ht++;                  \
        (l) = lt;                  \
        (h) = ht;                  \
    }

#define sqr64(lo, ho, in)                        \
    {                                            \
        u32 l, h, m;                             \
                                                 \
        h = (in);                                \
        l = LBITS(h);                            \
        h = HBITS(h);                            \
        m = (l) * (h);                           \
        l *= l;                                  \
        h *= h;                                  \
        h += (m & BN_MASK2h1) >> (BN_BITS4 - 1); \
        m = (m & BN_MASK2l) << (BN_BITS4 + 1);   \
        l = (l + m) & BN_MASK2;                  \
        if (l < m)                               \
            h++;                                 \
        (lo) = l;                                \
        (ho) = h;                                \
    }

#define mul_add(r, a, bl, bh, c)  \
    {                             \
        u32 l, h;                 \
                                  \
        h = (a);                  \
        l = LBITS(h);             \
        h = HBITS(h);             \
        mul64(l, h, (bl), (bh));  \
                                  \
        /* non-multiply part */   \
        l = (l + (c)) & BN_MASK2; \
        if (l < (c))              \
            h++;                  \
        (c) = (r);                \
        l = (l + (c)) & BN_MASK2; \
        if (l < (c))              \
            h++;                  \
        (c) = h & BN_MASK2;       \
        (r) = l;                  \
    }

#define mul(r, a, bl, bh, c)      \
    {                             \
        u32 l, h;                 \
                                  \
        h = (a);                  \
        l = LBITS(h);             \
        h = HBITS(h);             \
        mul64(l, h, (bl), (bh));  \
                                  \
        /* non-multiply part */   \
        l += (c);                 \
        if ((l & BN_MASK2) < (c)) \
            h++;                  \
        (c) = h & BN_MASK2;       \
        (r) = l & BN_MASK2;       \
    }

void bn_mul_normal(u32 *r, u32 *a, int na, u32 *b, int nb);
void bn_sqr_normal(u32 *r, u32 *a, int n, u32 *tmp);

#ifdef __cplusplus
}
#endif
#endif
