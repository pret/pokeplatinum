#include "crypto/sign.h"

#include <nitro/types.h>

#include "bignum.h"

static u32 CRYPTOi_RSA(u8 *param0, int param1, const u8 *param2, int param3, const u8 *param4, int param5, int param6)
{
    BIGNUM bn1;
    BIGNUM bn2;
    BIGNUM bn3;
    BIGNUM bn4;
    BN_CTX *ctx;
    u32 ret;

    if (param0 == NULL || param2 == NULL || param4 == NULL) {
        return -3;
    }

    ctx = BN_CTX_new();

    BN_init(&bn1);
    BN_init(&bn2);
    BN_init(&bn3);
    BN_init(&bn4);

    if (ctx == NULL) {
        ret = -2;
    } else if (BN_bin2bn(param2, param3, &bn1) == NULL) {
        ret = -2;
    } else if (!BN_set_word(&bn3, param6)) {
        ret = -2;
    } else if (BN_bin2bn(param4, param5, &bn4) == NULL) {
        ret = -2;
    } else if (!BN_mod_exp(&bn2, &bn1, &bn3, &bn4, ctx)) {
        ret = -2;
    } else {
        if (BN_num_bytes(&bn2) > param1) {
            ret = -1;
        } else {
            ret = BN_bn2bin(&bn2, param0);
        }
    }

    BN_free(&bn1);
    BN_free(&bn2);
    BN_free(&bn3);
    BN_free(&bn4);

    if (ctx != NULL) {
        BN_CTX_free(ctx);
    }

    return ret;
}

static BOOL ASN1Skip(u8 **param0, u32 *param1, int param2, u32 *param3)
{
    u8 *v0 = *param0;
    u32 v1 = 0;
    u32 v2;
    u32 v3 = *param1;
    if (*v0++ != param2) {
        return FALSE;
    }

    if (v3 < 1) {
        return FALSE;
    }

    u32 v4 = v3 - 1;
    u8 v5 = *v0;

    if (v5 & 0x80) {
        v5 &= 0x7F;
        if (v4 < v5 + 1) {
            return FALSE;
        }
        v2 = v4 - v5;
        if (param3 != NULL) {
            v0++;
            do {
                v1 = (v0[0] & 0x7F) + (v1 << 7);
                v5--;
            } while (v5 != 0);
        } else {
            v0 += v5;
        }
    } else {
        v0++;
        v1 = v5;
        if (v4 < 1) {
            return FALSE;
        }
        v2 = v4 - 1;
    }

    *param0 = v0;
    *param1 = v2;
    if (param3 != NULL) {
        *param3 = v1;
    }

    return TRUE;
}

static BOOL SkipPadding(u8 *param0, u32 param1, u8 **param2, u32 *param3)
{
    if (param1 < 10) {
        return FALSE;
    }

    u8 *v0 = param0 + param1;

    if (*param0 != 1) {
        return FALSE;
    }

    u8 *v1 = param0 + 1;

    for (int i = 0; i < 8; i++) {
        if (*v1++ != 0xFF) {
            return FALSE;
        }
    }

    while (v1 != v0) {
        if (*v1 != 0xFF) {
            break;
        }
        v1++;
    }

    if (v1 == v0) {
        return FALSE;
    }

    if (*v1) {
        return FALSE;
    }

    *param3 = (int)(v0 - (v1 + 1));
    *param2 = v1 + 1;

    return TRUE;
}

static BOOL ParseSignHash(u8 *param0, u32 param1, u8 **param2, int *param3, u8 **param4, int *param5)
{
    u32 v0;

    if (!ASN1Skip(&param0, &param1, 0x30, 0)) {
        return FALSE;
    }
    if (!ASN1Skip(&param0, &param1, 0x30, 0)) {
        return FALSE;
    }
    if (!ASN1Skip(&param0, &param1, 6, &v0)) {
        return FALSE;
    }

    if (param2 != NULL) {
        *param2 = param0;
    }
    if (param3 != NULL) {
        *param3 = v0;
    }

    param0 += v0;
    if (param1 < v0) {
        return FALSE;
    }
    param1 -= v0;

    if (!ASN1Skip(&param0, &param1, 5, &v0)) {
        return FALSE;
    }

    param0 += v0;
    if (param1 < v0) {
        return FALSE;
    }
    param1 -= v0;

    if (!ASN1Skip(&param0, &param1, 4, &v0)) {
        return FALSE;
    }

    if (param4 != NULL) {
        *param4 = param0;
    }
    if (param5 != NULL) {
        *param5 = v0;
    }

    return TRUE;
}

static BOOL CRYPTO_VerifySignatureWithHash(u8 *param0, const u8 *param1, const u8 *param2)
{
    u8 *v0;
    u32 v1 = 0;
    u8 *v2;
    int v3 = 0;
    u8 v4[0x100];
    u32 v5 = CRYPTOi_RSA(v4, 0x100, param1, 0x80, param2, 0x80, 0x10001);

    if (!SkipPadding(v4, v5, &v0, &v1)) {
        return FALSE;
    }

    if (!ParseSignHash(v0, v1, NULL, NULL, &v2, &v3)) {
        return FALSE;
    }

    if (v3 != 20) {
        return FALSE;
    }

    for (int i = 0; i < 20; i++) {
        u8 cmp1 = v2[i];
        u8 cmp2 = *param0;
        if (cmp1 != cmp2) {
            return FALSE;
        }
        param0++;
    }

    return TRUE;
}

BOOL CRYPTO_VerifySignature(const u8 *param0, int param1, const u8 *param2, const u8 *param3)
{
    u8 v0[20];
    MATH_CalcSHA1(v0, param0, param1);
    return CRYPTO_VerifySignatureWithHash(v0, param2, param3);
}
